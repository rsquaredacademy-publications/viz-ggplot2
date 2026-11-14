# ebk-vz3 — viz-ggplot2 fix round after the Codex audit

Date: 2026-11-14. Worktree `F:/R/ebooks/_worktrees/vz-style`, branch `task/vz-style-1114`.
**Base:** `a6f9631` (vz1 `7fc4623` + vz2 `a6f9631`). **Findings:** `F:/pm/notes/2026-11-14-pkgs/ebk-vz-audit.md`
(uncommitted copy at `docs/ebk-vz-audit.md`, untouched). Local commits only: no push, no `gh`, no branch
switch, no other worktree touched. `roadmap/` was already in `.gitignore`.

Scope: the audit's H1, M1, M2a–e, M3 and L1–L3. Headings, anchors, chunk options, code and examples are
unchanged except where an M2 correction required a prose sentence. Commits:

| Commit | Finding group |
| :-- | :-- |
| `eae50c3` | H1 alpha-limits explanation |
| `6a68351` | M1 `limits` lead-ins |
| `54673bc` | M2a–e inherited factual errors |
| `5ebd06c` | M3 report quotations, guard count and exceptions |
| `31c720f` | L1 light invitation restored |
| `7f1d329` | L3 whitespace on the lines this round touched |

## H1 — Alpha limits explanation was false

**`ggplot2-legend-shape-size-alpha.qmd:324`** (paragraph under `legs34`):

- **Before:** "Points outside the limits are drawn fully transparent, so they disappear from the plot;
  ggplot2 does not warn for alpha."
- **After:** "Points outside the limits get `alpha = NA`, which ggplot2 draws fully opaque, so the nine cars
  with horsepower below `100` stay on the plot and no warning is raised."

**Evidence** (R 4.6.1, ggplot2 4.0.3, neutral `Rscript --vanilla`): the `legs34` build has 32 rows, 9 with
`alpha = NA`; those rows keep `colour = "blue"`, and `scales::alpha("blue", NA_real_)` returns `#0000FFFF`
(opaque, not transparent). Printing the plot raises no warning. The rendered `legs34-1.png` in this round's
fresh HTML shows all 32 points, with the low-horsepower cars drawn as the darkest, fully opaque points, and a
legend running from 100 to 350. The audit's finding was confirmed and is now described as the default `NA`
behaviour.

## M1 — `limits` lead-ins contradicted the plots

Three lead-ins claimed that `limits` filters the data. The colour/fill and alpha plots keep all 32 cars, so
the claim is false there; size and shape really do remove rows (9 and 11) at draw time, so their lead-ins were
left alone.

| File:line | Before | After |
| :-- | :-- | :-- |
| `ggplot2-legend-color-fill.qmd:86` | "we want to modify the data to be displayed … we want to look at only cars with at least 6 cylinders … Instead, we will use the `limits` argument and filter the data for visualization." | "we want to change the groups shown in the legend … the legend to list only cars with at least 6 cylinders … Instead, we will use the `limits` argument to set the legend range; the data itself is not filtered." |
| `ggplot2-legend-color-fill.qmd:218` | same text as above (fill section) | same corrected text as above |
| `ggplot2-legend-shape-size-alpha.qmd:312` | "we want to modify the data to be displayed … we want to look at only cars whose horsepower is between `100` and `350` … use the `limits` argument and filter the data for visualization." | "we want to change the range shown in the legend … the legend to cover only cars whose horsepower is between `100` and `350` … use the `limits` argument to set the legend range; the data itself is not filtered." |

The other sentences and the post-chunk paragraphs (including H1's) were kept. Unchanged and re-checked:
`ggplot2-legend-shape-size-alpha.qmd:96`–`:100` (shape) and `:202`–`:207` (size), where `limits` does remove
rows, so "filter the data for visualization" matches what the plot does.

**Evidence:** `ggplot_build()` for `legc5` returns 32 rows, 11 with `colour = "grey50"`; the rendered
`legc5-1.png` shows the 11 four-cylinder cars in grey with a 6/8 legend, and `legc13-1.png` shows the same for
fill. The alpha build returns 32 rows with
9 `NA` alphas and no warning. The size build returns 32 rows with 9 `NA` sizes plus "Removed 9 rows…
(`geom_point()`)"; the shape build returns 11 `NA` shapes plus the matching 11-row warning. The rendered
plots were inspected, not only the build data.

## M2 — Five inherited factual errors

| ID / file:line | Before | After | Evidence |
| :-- | :-- | :-- | :-- |
| M2a `ggplot2-geoms.qmd:164` | "so we cannot use `geom_bar()`." | "so we use `geom_col()`, a shortcut for `geom_bar(stat = 'identity')`." | `geom_bar(stat = 'identity')` on the same device/visits data builds heights 30000, 12000, 5000, exactly as `geom_col()`; later chapters already use that spelling (`ggplot2-scales-accessibility.qmd:34`, `ggplot2-label-polish.qmd:39`). |
| M2b `ggplot2-labels.qmd:103` | "`expand_limits()` takes two numeric vectors (each of length 2), one for each axis"; "in all of these functions, the first element is the lower limit…" | "`expand_limits()` takes values named by aesthetic, for example `x = 0` or `y = c(0, 40)`"; "in `xlim()` and `ylim()`, the first element is the lower limit…" | `formals(expand_limits)` is `...`; `expand_limits(x = 0)` expands the x range to −23.6–495.6, and `expand_limits(x = c(100, 200))` leaves 51.1–492.0, so it includes values rather than setting a range. |
| M2b `ggplot2-labels.qmd:128`–`:130` | "limit the range of both the X and Y axis. The first input is the range for the X axis and the second input the range for the Y axis. In both cases, we use a numeric vector of length 2 to specify the lower and upper limit." | "extend the range of both the X and Y axis. We pass the values to include as named arguments, here `x = c(0, 600)` and `y = c(0, 40)`. Unlike `xlim()` and `ylim()`, this only widens the range, so no data is dropped." | The rendered `axis8-1.png` shows x 0–600, y 0–40 with every point still visible; `expand_limits()` does not drop rows. |
| M2c `ggplot2-scatter-plot.qmd:184`–`:186` | "By default, it uses the least squares method to fit the line, but you can also use the loess method." | "By default, the method depends on the data: `'loess'` for fewer than 1,000 observations and a GAM for larger data." | Unqualified `geom_smooth()` reports method `'loess'` at n = 32 and n = 999, and `'gam'` at n = 1000, 1001 and 2000. The chunk itself supplies `method = 'lm'`; the rendered `aes12a-1.png` is a straight least-squares line. |
| M2c `ggplot2-scatter-plot.qmd:208` | "instead of the default least squares method" | "instead of the least squares method" | Removes the false default claim; the comparison with the preceding `lm` chunk stays. |
| M2d `ggplot2-box-plot.qmd:53` | "Both data sets have the same data but in different formats." | "Both data sets have returns for the same five stocks, but in different formats; the long file has four extra rows." | Wide `tickers.csv` is 250 × 5 (1,250 values); long `tidy_tickers.csv` is 1,254 × 2 with no missing values. Per stock: AAPL, FB, GOOG and MSFT have 251 long rows against 250 wide values; AMZN has 250. Extras are one return each (5.619797, 7.25, 46.710022, 5.049996). |
| M2e `ggplot2-facets.qmd:105`, `:107` | "labels are displayed at the bottom for `X` axis and at the right for the `Y` axis"; "labels will now be displayed at the top for the `X` axis and at the left for the `Y` axis" | "labels are displayed at the top for `X` axis and at the right for the `Y` axis"; "labels will now be displayed at the bottom for the `X` axis and at the left for the `Y` axis" | Default gtable has `strip-t` and `strip-r`; `switch = "both"` has `strip-b` and `strip-l`. The rendered `facet6-1.png` shows row labels 4/6/8 on the left and column labels 3/4/5 at the bottom. |

## M3 — Misleading quotations and guard claims in `docs/ebk-vz2-report.md`

| Location | Before | After |
| :-- | :-- | :-- |
| `:15` | "One row is one sentence or paragraph; the `before` quotes the source exactly, inline code intact." | "One row is one sentence or paragraph, quoted as contiguous source text with inline code intact; a cell may begin or end mid-sentence, but it never splices non-adjacent fragments." |
| `:227` (Box Plots, line 62) | spliced fragments: "you can create `geom_boxplot()`." → "you can create a `geom_boxplot()`." | exact source: "you can create box plot for a single variable. Map the variable to `y` and add `geom_boxplot()`." → "you can create a box plot for a single variable. Map the variable to `y` and add `geom_boxplot()`." |
| `:258` (Histograms, line 133) | spliced fragments: "is by using the of the number of bins" → "is to use the of their number" | exact source paragraph, including the intervening `binwidth` material and the changed "As you can see, in the below example" clause |
| `:444` (Guard) | "`git diff 7fc4623 --stat` lists only the 22 chapter `.qmd` files, `about-the-author.qmd` and `docs/ebk-vz2-report.md`." | "lists 22 touched prose files (21 chapter `.qmd` files plus `about-the-author.qmd`) and `docs/ebk-vz2-report.md`." |
| `:448`–`:451` (Guard) | no record of exceptions | records the deleted duplicate numeral `2` at `ggplot2-modify-axis.qmd:58` and the 69 trailing-whitespace diagnostics in `git diff --check 7fc4623..a6f9631` |
| `:471`–`:477` (follow-ups) | "Two wording slips fixed" (box and alpha only) | "Five technical clarifications": `ggplot2-bar-plot.qmd:106`, `ggplot2-box-plot.qmd:103`, `ggplot2-legend-shape-size-alpha.qmd:298`, `ggplot2-facets.qmd:27`, `ggplot2-scales-accessibility.qmd:17` |
| `:478`–`:480` (follow-ups) | — | notes the L1 light line restored in this round |
| `:466`–`:470` (`limits` follow-up) | said the lead-ins were left for a content decision | notes they were resolved in `ebk-vz3` |

The two regenerated quotations were taken from `git diff 7fc4623..a6f9631` for the same files. The report's
214-row count was not changed; the audit confirmed it. The L2 five clarifications are now recorded as
technical corrections, not meaning-neutral style edits.

## Low items

- **L1** — `ggplot2-box-plot.qmd:172`: "You can **change** the transparency…" → "You can **play around with**
  the transparency of the outlier using the `outlier.alpha` argument." The rest of the sentence is unchanged.
  This restores the source's light line as the audit recommends.
- **L2** — no book change. The five sampled clarifications are correct and are now recorded in the vz2 report
  (see M3). The colour-vision wording and the other four corrections were left in place, as the audit advises.
- **L3** — the deleted duplicate numeral at `ggplot2-modify-axis.qmd:58` ("It takes a vector of length 2 i.e.
  2 values…") is a deliberate vz2 edit with no numerical change; it is recorded, not reverted. The 69 vz2
  trailing-whitespace diagnostics are recorded and left in place (whitespace hygiene only; cleaning the whole
  range would enlarge this fix round's diff). The three single trailing spaces on lines this round rewrote were
  trimmed, so `git diff --check a6f9631..HEAD` exits 0. No Markdown hard break was affected (none used two or
  more trailing spaces).

## Checks

- **Renders.** Each changed chapter was rendered alone with `quarto render <file>.qmd --to html` through
  `bash ~/.claude/bin/heavy-slot.sh ebk-vz3 …`, in throwaway `git archive HEAD` copies
  (`C:/Users/DELL/AppData/Local/Temp/ebk-vz3-final`, `…-final2`). All seven changed chapters exit 0:
  Geoms, Labels, Scatter Plots, Box Plots, Faceting, Legend: Color and Fill, Legend: Shape Size and Alpha.
  No new error or warning: the only warning in the logs is Labels' pre-existing Windows "font family not
  found" warning (the audit reproduced it in its vz1 control).
- **Rendered text.** The corrected sentences appear in the fresh HTML for each chapter; the checked figures
  are `legs34`, `legc5`, `legc13`, `axis8`, `aes12a` and `facet6`.
- **Facts.** All M2 claims were re-tested in R 4.6.1/ggplot2 4.0.3 with data downloaded from the book's URLs;
  probe scripts and logs are outside the worktree under
  `C:/Users/DELL/AppData/Local/Temp/ebk-vz3-probe/`.
- **Diff hygiene.** `git diff --check a6f9631..HEAD` exits 0. No heading, anchor, chunk option, code block,
  link or example value changed in this round; the duplicate `2` deleted in vz2 is recorded above, not touched
  here.

**Validation limits:** local Quarto is 1.6.39 against CI's 1.10.18 and R 4.5; PDF/EPUB were not rebuilt; CI
was not run because no push was authorised; the webR cell was not executed in a browser.

## Follow-ups, in full

1. **If the alpha section should really subset the data**, that is a code/content change: `filter(hp >= 100 &
   hp <= 350)`, `xlim()`/`ylim()`, or `coord_cartesian()`. The prose now teaches what `limits` actually does;
   changing the teaching goal needs a separate review.
2. **Shape and size lead-ins** still say `limits` "filter[s] the data for visualization". At draw time the rows
   are removed (with the warnings the book already shows), so this is accurate, but if Aravind prefers
   "removes" wording, that is a small copy edit.
3. **69 vz2 trailing-whitespace diagnostics** remain in the `7fc4623..a6f9631` range. They are harmless; a
   book-wide trim is a separate hygiene pass.
4. **Only the two quotations the audit flagged were regenerated.** The other 212 report rows were not
   re-derived mechanically; a full regeneration would be a separate audit task.
5. **The audit's "four cut sentences" premise** remains unsubstantiated: the vz2 report has no deletion list,
   and this round did not invent one.
6. **Existing generic wording** flagged by the audit but outside this brief is untouched:
   `ggplot2-position-stats.qmd:10` ("Defaults get you 80% there"), `ggplot2-scales-accessibility.qmd:11`
   ("instantly legible to everyone"), `ggplot2-export-communicate.qmd:9`–`:10` ("fails at the finish line"),
   and the stock-index em-dash parentheticals.
7. **The learner review's structural suggestions** (folding the three legend chapters into one task-based
   chapter, course-lesson pointers) remain content/restructuring work.
8. **Environment gaps** above (Quarto version, PDF/EPUB, CI, webR) mean these local HTML renders do not by
   themselves establish publication readiness.
