# ebk-vz4 — fix round after the Codex re-audit

Date: 2026-11-15. Worktree `viz-ggplot2`, branch `task/vz-style-1114`, base
`a3bde9f` (after ebk-vz3). Findings: `docs/ebk-vz-reaudit.md`, left uncommitted
and unedited, as was `docs/ebk-vz-audit.md`. Fixes were made for R1–R4 and
L1–L3 only. Nothing was pushed, no branch was switched, no `gh` command was run
and no other worktree was touched.

Environment: R 4.6.1 (2026-06-24 ucrt), ggplot2 4.0.3, Quarto 1.6.39.

## Disposition

| ID | Severity | Where | Change |
| :-- | :-- | :-- | :-- |
| R1 | Medium | `docs/ebk-vz2-report.md` (23 rows) | Cells regenerated from `7fc4623` and `a6f9631`; two encoding errors repaired |
| R2 | Medium | `ggplot2-scatter-plot.qmd:183–187`; `docs/ebk-vz3-report.md:67` | Default smoother rule now counts the largest group |
| R3 | Medium | `ggplot2-labels.qmd:104` | `xlim()`/`ylim()` described as endpoints, not fixed lower-first |
| R4 | Medium | six chapter sentences | R4a–R4f corrected in one line each |
| L1 | Low | `docs/ebk-vz2-report.md:450`; `docs/ebk-vz3-report.md:80`, `:97–:99`, `:133–:135` | 68 diagnostics for `7fc4623..a6f9631`; combined ranges named |
| L2 | Low | `docs/ebk-vz3-report.md:126–:129` | Alpha follow-up no longer conflates `filter()` with axis limits/zoom |
| L3 | Low | `ggplot2-scales-accessibility.qmd:11`; `docs/ebk-vz3-report.md:140–:144` | Overbroad legibility guarantee removed; other inherited wording left |

Commits (local only): `8eb5709` R1, `37f3568` R2, `3c7efe8` R3, `ebccfec` R4,
`95a6f92` L1, `4663b85` L2, `7cf51c4` L3, plus this report.

## R1 — the quotation repair

The report's promise at `docs/ebk-vz2-report.md:15`–`:16` is now true as written:
every `before` cell is contiguous source text from `7fc4623`, every `after` cell
is contiguous source text from `a6f9631`, and no cell splices non-adjacent
fragments. No ellipsis was needed; the missing intervening sentences are quoted
in full. Two cells that carried mojibake are now real Unicode dashes.

The 23 rows, with the repaired text shown only where it changed:

| Report line | File | Repair |
| --: | :-- | :-- |
| 115 | `ggplot2-aesthetics.qmd:145` | `21â€“25` becomes `21–25` in both cells |
| 122 | `ggplot2-aesthetics.qmd:246` | restored “We have easily plotted the price trend of all four indices using the `group` argument.” |
| 157 | `ggplot2-text-annotations.qmd:50` | restored the second list item “- and the text itself” |
| 178 | `ggplot2-scatter-plot.qmd:155` | restored “`factor()` to convert `cyl` to categorical data before mapping shape to it.” |
| 198 | `ggplot2-line-graph.qmd:138` | restored “to identify which line represents which index.” |
| 211 | `ggplot2-bar-plot.qmd:79` | restored “levels of another categorical variable” |
| 212 | `ggplot2-bar-plot.qmd:94` | restored “can observe that the bars are placed next to one another instead of being” |
| 261 | `ggplot2-histogram.qmd:167` | restored “`fill` to the device variable. You can try mapping color, linetype and linewidth to” |
| 298 | `ggplot2-modify-legend.qmd:182` | restored “to a categorical variable. In this section, you will learn about” |
| 315, 322 | `ggplot2-legend-color-fill.qmd:86`, `:217` | restored “examining the relationship between mileage and displacement for all cars, we” |
| 317, 323 | `ggplot2-legend-color-fill.qmd:121`, `:239` | restored “want the labels in the legend to represent all of them. In such cases, we can use the breaks argument…” |
| 335, 340, 345 | `ggplot2-legend-shape-size-alpha.qmd:96`, `:202`, `:312` | restored the same relationship/examination sentence |
| 336 | `ggplot2-legend-shape-size-alpha.qmd:118` | restored the legend/breaks context |
| 344 | `ggplot2-legend-shape-size-alpha.qmd:298` | restored “want the labels in the legend to represent all of them. In such cases, we can use the breaks argument…” |
| 346 | `ggplot2-legend-shape-size-alpha.qmd:330` | restored “argument. We need to specify a lower and upper range using a numeric vector. In the below example…” |
| 356 | `ggplot2-facets.qmd:26` | restored “means dealing with 3 different data sets, plotting 3 plots and arranging them for comparison.” |
| 359 | `ggplot2-facets.qmd:68` | restored “relationship between displacement and miles per gallon for different combinations of” |
| 362 | `ggplot2-facets.qmd:106` | restored “and supplying the value `'both'`. The labels will now be displayed at the top…” |
| 407 | `ggplot2-reshaping.qmd:40` | `series â€” repetitive` becomes `series — repetitive` |

Example row, `docs/ebk-vz2-report.md:122`, before the fix:

```text
| `ggplot2-aesthetics.qmd:246` | 4, 13 | … We have Now, let us ensure … | … We have Now let us ensure … |
```

and after:

```text
| `ggplot2-aesthetics.qmd:246` | 4, 13 | … We have easily plotted the price trend of all four indices using the `group` argument. Now, let us ensure … | … We have easily plotted the price trend of all four indices using the `group` argument. Now let us ensure … |
```

Evidence. Every row in the report (214 parsed table rows) was checked
mechanically against the two historical revisions. For each row the `before`
cell was searched in whitespace-normalized `7fc4623:<file>` and the `after` cell
in `a6f9631:<file>`; the `after` cell was also required to sit within four lines
of the line number the row claims.

```text
rows parsed: 214
failures: 0
rows: 214 line-number mismatches: 0
```

Run against the report as committed at `a3bde9f`, the same check fails exactly the
23 rows the re-audit lists, 45 failing cells:

```text
rows parsed: 214
failures: 45
failing report lines: 115, 115, 122, 122, 157, 157, 178, 178, 198, 198, 211, 211,
212, 212, 261, 261, 298, 298, 315, 315, 317, 317, 322, 322, 323, 323, 335, 335,
336, 336, 340, 340, 344, 344, 345, 345, 346, 346, 356, 356, 359, 359, 362, 362, 407
```

The two cells whose text was right but encoded wrongly are inside the 214, so the
check covers the `21–25` and `—` repairs as well.

## R2 — the smoothing default

File `ggplot2-scatter-plot.qmd`, now lines 183–187 (was 183–186; the rewrap adds
one line).

Before:

```text
method depends on the data: `'loess'` for fewer than 1,000 observations and a GAM
for larger data. In the example below, we fit a regression line using the least
```

After:

```text
method depends on the data: `'loess'` when the largest group has fewer than 1,000
observations, and a GAM for larger groups. In the example below, we fit a
```

`docs/ebk-vz3-report.md:67` repeated the old rule; its `After` cell now carries
the corrected sentence and its evidence records the largest-group probe.

Evidence (`Rscript --vanilla`, neutral folder). The default fit was compared with
an explicit `method = 'loess'` fit and an explicit `method = 'gam'` fit:

```text
== 2,000 rows, four colour groups of 500 ==
         rows        groups matches_loess   matches_gam
         2000             4             1             0
== 1,000 rows, one group ==
         rows        groups matches_loess   matches_gam
         1000             1             0             1
== mtcars, 32 rows ==
         rows        groups matches_loess   matches_gam
           32             1             1             0
largest group rows: 500
```

So the cutoff counts rows in the largest group, not rows in the data frame. The
explicit `method = 'lm'` chunk is unchanged and still correct.

## R3 — the `xlim()`/`ylim()` bullet

File `ggplot2-labels.qmd:104`.

Before:

```text
- in `xlim()` and `ylim()`, the first element is the lower limit and the second element is the upper limit
```

After:

```text
- in `xlim()` and `ylim()`, the two values are the axis endpoints; the first is the lower limit for an ordinary ascending axis, and reversing the values reverses the axis
```

Evidence (`Rscript --vanilla`, neutral folder):

```text
== xlim(c(600, 0)) on mtcars disp ==
rows in layer: 32
panel x range (transformed): -630 to 30
ascending range: -30 to 630
== transformed point x values ==
rows: 32  x from -472 to -71.1
ascending rows: 32  x from 71.1 to 472
```

The descending call keeps all 32 cars and puts the larger displacement at the
negative end, so the first value is the upper end of the axis, not the lower.

## R4 — six inherited claims in touched teaching prose

### R4a — `ggplot2-legend-shape-size-alpha.qmd:58–59`

Before:

```text
If you have mapped shape or size to a discrete variable with fewer than six
categories, you can use `scale_shape()`.
```

After:

```text
If you have mapped shape to a discrete variable with up to six categories, you
can use `scale_shape()`.
```

Evidence: a shape-only discrete mapping builds, a size-only discrete mapping is
untouched by `scale_shape()` and still warns, and seven shape levels exceed the
default palette.

```text
size warning: Using size for a discrete variable is not advised.
shape build: built
size build: built
seven shape levels: The shape palette can deal with a maximum of 6 discrete values because more
than 6 becomes difficult to discriminate
ℹ you have requested 7 values. Consider specifying shapes manually if you need
  that many of them.
```

### R4b — `ggplot2-legend-color-fill.qmd:55–57`, `:191–193`; `ggplot2-legend-shape-size-alpha.qmd:70–72`

Before, colors (twice):

```text
supply a character vector of color names. The number of colors must equal the
number of levels in the categorical variable mapped.
```

After, colors (twice):

```text
supply a character vector of color names. Supply a color for each level of the
categorical variable that you want to display.
```

Before, shapes:

```text
supply a numeric vector of shapes. The number of shapes must equal
the number of levels in the categorical variable mapped.
```

After, shapes:

```text
supply a numeric vector of shapes. Supply a shape for each level of the
categorical variable that you want to display.
```

Evidence: surplus values are accepted and ignored; too few values still error, so
the advice keeps its practical force without claiming an exact-cardinality rule.

```text
four values, three levels: built = TRUE
distinct colours drawn: blue green red
two values, three levels -> Error in `palette()`:
! Insufficient values in manual scale. 3 needed but only 2 provided.
```

### R4c — `ggplot2-themes.qmd:62–64`

Before:

```text
change the color, linewidth, linetype and length of the ticks using the `element_line()`
function.
```

After:

```text
change the color, linewidth and linetype of the ticks using the `element_line()`
function, and their length using `axis.ticks.length`.
```

(The deleted line ended with a trailing space, quoted here without it; it went
with the line, so `git diff --check` on the round is clean.) Evidence: tick
length is not an `element_line()` argument.

```text
== tick length ==
element_line(length=): `...` must be empty.
✖ Problematic argument:
• length = unit(1, "cm")
```

The chunk below the sentence already sets `axis.ticks.length = unit(1, "cm")`
separately, so only the description changed.

### R4d — `ggplot2-scatter-plot.qmd:166`

Before:

```text
Size must always be mapped to continuous variables. In the example below, we
```

After:

```text
It is better to map size to continuous variables. In the example below, we
```

Evidence: the discrete-size mapping builds, with a warning, which is what the
next chunk demonstrates; “must” was advice, not a constraint. From the R4a probe:
`size warning: Using size for a discrete variable is not advised.` and
`size build: built`.

### R4e — `ggplot2-histogram.qmd:136`

Before:

```text
using `binwidth`. You can use either of them but not both.
```

After:

```text
using `binwidth`. Use one of them at a time.
```

Evidence:

```text
== bins and binwidth together ==
built; binwidth used: 2
```

No warning is raised, and `binwidth` wins, so “not both” implied a rejection that
ggplot2 does not perform.

### R4f — `ggplot2-aesthetics.qmd:246–247`

Before:

```text
To map the aesthetics to a variable, we must use the `group` argument. In the
example below, we map the aesthetics to `index`. But we cannot distinguish
```

After:

```text
To map the aesthetics to a variable, we must use the `group` argument here. In
the example below, we map the aesthetics to `index`. But we cannot distinguish
```

Evidence: discrete colour or linetype infers the groups for this data without an
explicit `group`.

```text
rows: 7440  groups drawn: 4  points per group: 1860
no colour, no group -> groups: 1
linetype only -> groups: 4
```

## L1 — whitespace counts and the numeral exception

Recounted with `git diff --check <range> | grep -c "trailing whitespace"`:

| Range | Diagnostics |
| :-- | --: |
| `7fc4623..a6f9631` | 68 |
| `origin/master..a6f9631` | 69 |
| `origin/master..HEAD` | 59 |
| `a6f9631..HEAD` | 0 |

Before and after, `docs/ebk-vz2-report.md:450`:

```text
Separately, `git diff --check 7fc4623..a6f9631` reports 69 trailing-whitespace diagnostics on added prose lines;
Separately, `git diff --check 7fc4623..a6f9631` reports 68 trailing-whitespace diagnostics on added prose lines;
```

(first line before, second after). Before and after, `docs/ebk-vz3-report.md:80`:

```text
… records the deleted duplicate numeral `2` at `ggplot2-modify-axis.qmd:58` and the 69 trailing-whitespace diagnostics in `git diff --check 7fc4623..a6f9631` |
… records the deleted duplicate numeral `2` at `ggplot2-modify-axis.qmd:58` and the 68 trailing-whitespace diagnostics in `git diff --check 7fc4623..a6f9631` |
```

The vz3 report's L3 paragraph and follow-up 3 now read “The 68 vz2
trailing-whitespace diagnostics (`git diff --check 7fc4623..a6f9631`; 69 over
the combined `origin/master..a6f9631`)”, and follow-up 3 adds the
`origin/master..HEAD` figure. The deleted duplicate prose numeral in
`ggplot2-modify-axis.qmd:58` is unchanged and stays recorded as the disclosed
exception. `git diff --check a3bde9f..HEAD` exits 0, so this round adds no
diagnostics of its own.

## L2 — the alpha follow-up

`docs/ebk-vz3-report.md:126–:129`.

Before:

```text
1. **If the alpha section should really subset the data**, that is a code/content change: `filter(hp >= 100 &
   hp <= 350)`, `xlim()`/`ylim()`, or `coord_cartesian()`. The prose now teaches what `limits` actually does;
   changing the teaching goal needs a separate review.
```

After:

```text
1. **If the alpha section should really subset the data**, that is a code/content change: `filter(hp >= 100 &
   hp <= 350)`. The chapter plots displacement and mileage on its axes, so axis limits and `coord_cartesian()`
   cannot select cars by horsepower; they only change the visible window. The prose now teaches what `limits`
   actually does; changing the teaching goal needs a separate review.
```

The chapter's own axes carry `disp` and `mpg`, so neither `xlim()`/`ylim()` nor
`coord_cartesian()` can select by `hp`; `filter(hp >= 100 & hp <= 350)` is the
only suggested follow-up that does what the sentence promises.

## L3 — inherited generic wording

`ggplot2-scales-accessibility.qmd:11`.

Before:

```text
charts instantly legible to everyone.
```

After:

```text
charts easier to read.
```

The other two locations named by the re-audit stay: `ggplot2-position-stats.qmd:10`
(“Defaults get you 80% there”) is a figure of speech, not a measurement, and
`ggplot2-export-communicate.qmd:9`–`:10` (“fails at the finish line”) is an image;
neither makes a false claim, and both are the author's voice. The vz3 report's
follow-up 6 was updated to say which of the three changed.

## Checks

Each changed chapter was rendered alone in a throwaway copy outside the worktree:

```text
git archive HEAD | tar -x -C C:/Users/DELL/AppData/Local/Temp/vz4/archive
cd C:/Users/DELL/AppData/Local/Temp/vz4/archive
RENV_CONFIG_AUTOLOADER_ENABLED=false quarto render <file>.qmd --to html
```

All eight changed chapters exited 0:

```text
ggplot2-scatter-plot            exit 0
ggplot2-labels                  exit 0
ggplot2-aesthetics              exit 0
ggplot2-histogram               exit 0
ggplot2-legend-color-fill       exit 0
ggplot2-legend-shape-size-alpha exit 0
ggplot2-themes                  exit 0
ggplot2-scales-accessibility    exit 0
```

The only warnings are the pre-existing ones: the Arial/font-database messages in
Labels (`font family not found in Windows font database`). No new error appears
in any log. The rendered pages in `_book/` contain the corrected sentences and
none of the replaced wording; the eight HTML files were searched for both.

## Commands run

Working directory `F:/R/ebooks/_worktrees/vz-style` unless stated.

```text
git status --short; git log --oneline -5
git show 7fc4623:<file>; git show a6f9631:<file>     quotation sources
python build.py                                     row regeneration (temp folder)
python check.py                                     214-row contiguity check
python lines2.py                                    214-row line-number check
git diff 7fc4623 --stat; git diff --check <range>
Rscript --vanilla p2.R                              smoother default
Rscript --vanilla probe.R                           limits, shape, palette, tick length, binwidth
Rscript --vanilla probe2.R                          endpoints, surplus palette values
Rscript --vanilla probe3.R                          inferred grouping
git diff; git add <files>; git commit -m "... (ebk-vz4)"
git archive HEAD | tar -x -C C:/Users/DELL/AppData/Local/Temp/vz4/archive
RENV_CONFIG_AUTOLOADER_ENABLED=false quarto render <file>.qmd --to html
```

The R probes ran from `C:/Users/DELL/AppData/Local/Temp/vz4/neutral`, a folder
with no `.Rprofile`, no `renv/` and no project file.

## Follow-ups, in full

1. **The “four cut sentences” premise is still unsubstantiated.** The re-audit is
   right: neither revision of the vz2 report contains a list of four deleted
   sentences, and the 16 solutions-pointer removals plus the Preface/gist
   removals belong to vz1. Resolving it needs the actual list from Aravind or
   from the original builder; it cannot be reconstructed from Git. This round
   neither invented nor approved such a list.

2. **59 trailing-whitespace diagnostics remain across `origin/master..HEAD`** (68
   in the vz2 range alone). They are hygiene only and were left alone because a
   book-wide trim would enlarge this round's diff; a separate single-purpose
   commit is the right place for it.

3. **`scale_*_manual()` cardinality is a one-line rule now, not a full
   explanation.** R4b's remaining nuance is that with named values or limited
   scale domains you need not supply a value for every original factor level; the
   chapter's own `legs23` example supplies 6 and 8 only. Explaining that needs a
   short paragraph beside the `legs23` chunk, which is a content decision, so it
   is listed here instead of being rewritten.

4. **Two inherited tone items are deliberately unchanged.**
   `ggplot2-position-stats.qmd:10` (“Defaults get you 80% there”) and
   `ggplot2-export-communicate.qmd:9`–`:10` (“fails at the finish line”) carry no
   false technical claim; rewriting them would be a voice decision for Aravind.

5. **The alpha section's teaching goal is still open.** The prose now describes
   `limits` correctly; if the section is meant to subset the data, the code and
   the example need changing together. See item 1 of the vz3 report follow-ups,
   now corrected.

6. **Item 4 of the vz3 follow-ups is now done.** It said the other 212 report
   rows had not been re-derived mechanically; all 214 rows now pass the
   contiguity and line-number checks above. The vz3 text is left as the record of
   that round.

7. **Local-only checks.** Renders were HTML-only with local Quarto 1.6.39 against
   CI's pinned versions; PDF/EPUB were not rebuilt, CI was not run because no
   push was authorised, and the webR cell was not executed in a browser.
