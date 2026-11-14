# eBook style pass — Data Visualization with ggplot2 (ebk-vz2)

Date: 2026-11-14. Worktree `viz-ggplot2`, branch `task/vz-style-1114`, built on the unmerged correctness
round `7fc4623` (vz1).
**Against:** `docs/style-guide.md` §1 (voice, KEEP traits), §2 (the checklist), §3a (decisions, 2026-10-30), §5
(report format, do-not-touch, keep-his-voice); `docs/voice-spoken.md`; `docs/williams-checklist.md`.
**Level of change:** the approved pilot (`F:/pm/notes/2026-11-06-ebook-style-pilot.md`) and the merged intro-r
pass (`ebk-ir2`).
**Scope:** prose only. Code, chunk labels and options, inline code, outputs, headings and anchors, file names,
webR cells, `<details>` answer blocks, callout types, numbers, data and file names, link targets and the chapter
footer structure are untouched. The learner review
(`F:/pm/notes/2026-11-09-ebook-review/viz-ggplot2-review.md`) is context only; no restructuring, no new chapters,
no example changes.

Rows are in source order. One row is one sentence or paragraph, quoted as contiguous source text with inline
code intact; a cell may begin or end mid-sentence, but it never splices non-adjacent fragments. Line numbers are
the line in the committed file. Each chapter carries one consolidated refusal
paragraph listing the sentences left alone and the override that protects them, so the coverage numbers are
real. Changes are grouped per contiguous diff block, so a row may hold two or three adjacent sentences that were
rewritten together.

## Summary

| Chapter | File | Changes | Refusals |
| :-- | :-- | --: | --: |
| About the Author | `about-the-author.qmd` | 1 | 1 |
| Quick Tour | `ggplot2-quicktour.qmd` | 9 | 1 |
| Geoms | `ggplot2-geoms.qmd` | 12 | 1 |
| Aesthetics | `ggplot2-aesthetics.qmd` | 20 | 1 |
| Labels | `ggplot2-labels.qmd` | 15 | 1 |
| Text Annotations | `ggplot2-text-annotations.qmd` | 6 | 1 |
| Scatter Plots | `ggplot2-scatter-plot.qmd` | 16 | 1 |
| Line Graphs | `ggplot2-line-graph.qmd` | 11 | 1 |
| Bar Plots | `ggplot2-bar-plot.qmd` | 9 | 1 |
| Box Plots | `ggplot2-box-plot.qmd` | 18 | 1 |
| Histograms | `ggplot2-histogram.qmd` | 12 | 1 |
| Modify Axis | `ggplot2-modify-axis.qmd` | 10 | 1 |
| Modify Legend | `ggplot2-modify-legend.qmd` | 19 | 1 |
| Legend: Color and Fill | `ggplot2-legend-color-fill.qmd` | 12 | 1 |
| Legend: Shape Size and Alpha | `ggplot2-legend-shape-size-alpha.qmd` | 17 | 1 |
| Faceting | `ggplot2-facets.qmd` | 12 | 1 |
| Themes | `ggplot2-themes.qmd` | 9 | 1 |
| Position & Stats Tuning | `ggplot2-position-stats.qmd` | 1 | 1 |
| Scales, Formatting & Color Accessibility | `ggplot2-scales-accessibility.qmd` | 2 | 1 |
| Data Reshaping | `ggplot2-reshaping.qmd` | 1 | 1 |
| Label Polishing & Wrapping | `ggplot2-label-polish.qmd` | 1 | 1 |
| Finale: Publication Polish with patchwork, ggrepel & ggtext | `ggplot2-finale-polish.qmd` | 0 | 1 |
| Export & Communicate | `ggplot2-export-communicate.qmd` | 1 | 1 |
| **Total** | | **214** | **23** |

Chapters with no prose change: the Preface (`index.qmd`) is a cover image and the licence line only, and the
Finale is already in the target style; both are recorded below.

## Preface

No prose. `index.qmd` holds the cover image and the licence line only, both protected. No row, no change,
no commit.

## About the Author

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `about-the-author.qmd:15` | 3 | free and open source education initiative with focus on data science and | free and open source education initiative with a focus on data science and |

Refusals: The biography, degree wording, package credits and all links remain. Third person is appropriate for a biography, so it is not converted into the instructional "we".

## Quick Tour

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-quicktour.qmd:44` | 1, 9 | Scatter plots are used to examine the relationship between two continuous variables. The relationship can be examined across the levels of a categorical variable as well. Let us begin by creating scatter plots. Map the X and Y | We use scatter plots to examine the relationship between two continuous variables. We can also examine the relationship across the levels of a categorical variable. Let us begin with a scatter plot. Map the X and Y |
| `ggplot2-quicktour.qmd:54` | 9 | If you want the relationship between the two variables to be represented by both points and a line, add both layers. | To show the relationship with both points and a line, add both layers. |
| `ggplot2-quicktour.qmd:62` | 1 | The color of the points can be mapped to a categorical variable, in our case `cyl`, using the `color` aesthetic. Ensure that the variable is categorical using | We can map the color of the points to a categorical variable, `cyl` in our case, using the `color` aesthetic. Ensure that the variable is categorical using |
| `ggplot2-quicktour.qmd:72` | 4 (§3a.3) | `shape` and `size` aesthetics as shown in the below examples. | `shape` and `size` aesthetics as shown in the examples below. |
| `ggplot2-quicktour.qmd:88` | 3 | A bar plot represents data in rectangular bars. The length of the bars are proportional to the values they represent. Bar plots can be either horizontal | A bar plot represents data in rectangular bars. The length of each bar is proportional to the value it represents. Bar plots can be either horizontal |
| `ggplot2-quicktour.qmd:114` | 8 | comparing distributions. It shows the shape, central tendancy and variability | comparing distributions. It shows the shape, central tendency and variability |
| `ggplot2-quicktour.qmd:142` | 1, 8 | Line charts are used to examing trends across time. Map the time variable to | We use line charts to examine trends over time. Map the time variable to |
| `ggplot2-quicktour.qmd:150` | 1 | The appearance of the line can be modified by setting the `color` outside `aes()` as shown below. We also add a title and readable axis labels with | We can modify the appearance of the line by setting `color` outside `aes()`, as shown below. We also add a title and readable axis labels with |
| `ggplot2-quicktour.qmd:162` | 2, 9 | A histogram is a plot that can be used to examine the shape and spread of continuous data. It looks very similar to a bar graph and can be used to detect outliers and skewness in data. Map the continuous variable to `x` and add `geom_histogram()`, controlling detail with `bins`. | A histogram examines the shape and spread of continuous data. It looks very similar to a bar graph and can be used to detect outliers and skewness in data. Map the continuous variable to `x` and add `geom_histogram()`, controlling detail with `bins`. |

Refusals: The chapter orientation ("In this chapter, we will quickly build a set of plots…") stays: checklist 11 allows one orientation line, and it is a KEEP trait. "Ensure that size is mapped to a continuous variable." stays: "ensure that" is a guardrail, not a hedge (checklist 10 override). The two callouts, the exercise list and "Where to go next" are untouched.

## Geoms

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-geoms.qmd:61` | 2, 6, 9 | A scatter plot displays the relationship between two continuous variables. In ggplot2, we can build a scatter plot using `geom_point()`. Scatter plots can show you visually | A scatter plot displays the relationship between two continuous variables. In ggplot2, we build a scatter plot using `geom_point()`. A scatter plot shows visually |
| `ggplot2-geoms.qmd:69` | 1, 2 | The variables representing the X and Y axis can be specified either in `ggplot()` or in `geom_point()`. We will learn to modify the appearance of the points in the Aesthetics chapter. | We can specify the variables for the X and Y axis either in `ggplot()` or in `geom_point()`. We will learn to modify the appearance of the points in the Aesthetics chapter. |
| `ggplot2-geoms.qmd:85` | 4 (§3a.3) | If you are using `geom_abline()`, you need to specify the intercept and slope as shown in the below example: | If you are using `geom_abline()`, you need to specify the intercept and slope as shown in the example below: |
| `ggplot2-geoms.qmd:95` | 2 | line, which can be `lm` or `loess`. You also need to indicate whether the confidence interval must be displayed using the `se` argument. | line, which can be `lm` or `loess`. You also need to indicate whether to display the confidence interval using the `se` argument. |
| `ggplot2-geoms.qmd:131` | 4 (§3a.3) | within `aes()`. In the below example, the bars do not represent the count of | within `aes()`. In the example below, the bars do not represent the count of |
| `ggplot2-geoms.qmd:162` | 2, 3, 4 (§3a.3) | If the data has already been summarized, you can use `geom_col()` instead of `geom_bar()`. In the below example, we have the total visits for each device type. The data has already been summarized and as such we cannot use `geom_bar()`. | If the data has already been summarized, use `geom_col()` instead of `geom_bar()`. In the example below, we have the total visits for each device type. The data has already been summarized, so we cannot use `geom_bar()`. |
| `ggplot2-geoms.qmd:179` | 8 | comparing distributions. It shows the shape, central tendancy and variability | comparing distributions. It shows the shape, central tendency and variability |
| `ggplot2-geoms.qmd:189` | 2 | A histogram is a plot that can be used to examine the shape and spread of continuous data. It looks very similar to a bar graph and can be used to detect outliers and skewness in data. Use `geom_histogram()` to create a histogram. | A histogram examines the shape and spread of continuous data. It looks very similar to a bar graph and can be used to detect outliers and skewness in data. Use `geom_histogram()` to create a histogram. |
| `ggplot2-geoms.qmd:208` | 1, 2 | Line charts are used to examine trends over time. We will use a different data set for exploring line plots. | We use line charts to examine trends over time. We will use a different data set to explore line plots. |
| `ggplot2-geoms.qmd:219` | 4 (§3a.3) | Use `geom_line()` to create a line chart. In the below plot, we chart the DAX | Use `geom_line()` to create a line chart. In the plot below, we chart the DAX |
| `ggplot2-geoms.qmd:242` | 1, 2 | To add a horizontal line, the Y axis intercept must be supplied using the | To add a horizontal line, supply the Y axis intercept using the |
| `ggplot2-geoms.qmd:253` | 1, 2 | For the vertical line, the X axis intercept must be supplied using the | For the vertical line, supply the X axis intercept using the |

Refusals: The orientation line and the library list stay. "You can label the points using `geom_label()`." stays: the one-line instruction is already his plain form. The exercise list and "Where to go next" are untouched, as are the chunk labels.

## Aesthetics

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-aesthetics.qmd:17` | 9, 2 | In this chapter, we will focus on the aesthetics i.e. color, shape, size, alpha, line type, line width etc. We can map these to variables or specify values for them. If we want to map the above to variables, we have to specify them within the `aes()` function. We will look at both methods in the following sections. | In this chapter, we will focus on the aesthetics: color, shape, size, alpha, line type and line width. We can map these to variables or specify values for them. To map them to variables, we specify them within the `aes()` function. We will look at both methods in the following sections. |
| `ggplot2-aesthetics.qmd:72` | 2, 18 | In ggplot2, when we mention `color` or `colour`, it usually refers to the color of the geoms. The `fill` argument is used to specify the color of the shapes in certain cases. In this first section, we will see how we can specify the color for the different geoms we learnt in the previous chapter. | In ggplot2, `color` or `colour` usually refers to the color of the geoms. The `fill` argument specifies the color of the shapes in certain cases. In this first section, we will see how to specify the color for the different geoms we learned in the previous chapter. |
| `ggplot2-aesthetics.qmd:79` | 2, 3, 9 | For points, the `color` argument specifies the color of the point for certain shapes and border for others. The `fill` argument is used to specify the background for some shapes and will not work with other shapes. Let us look at an example: | For points, the `color` argument specifies the color of the point for certain shapes and the border for others. The `fill` argument specifies the background for some shapes and does not work with others. Let us look at an example: |
| `ggplot2-aesthetics.qmd:88` | 5, 9 | We can map the variable to color in the `geom_point()` function as well since it inherits the data from the `ggplot()` function. | We can also map the variable to color in the `geom_point()` function, since it inherits the data from `ggplot()`. |
| `ggplot2-aesthetics.qmd:96` | 9 | If you do not want to map a variable to color, you can specify it separately using the `color` argument but in this case it should be outside the `aes()` function. | If you do not want to map a variable to color, specify it separately using the `color` argument, outside the `aes()` function. |
| `ggplot2-aesthetics.qmd:104` | 3, 6 | Now we will change the shape of the points to understand the difference between `color` and `fill` arguments. It can be again mapped to variables or values. Let us map shape to variables. | Now we will change the shape of the points to understand the difference between the `color` and `fill` arguments. Shape can again be mapped to variables or values. Let us map shape to variables. |
| `ggplot2-aesthetics.qmd:114` | 2 | are mapping an aesthetic to a variable, it must be inside `aes()`. | map an aesthetic to a variable, it must be inside `aes()`. |
| `ggplot2-aesthetics.qmd:121` | 2, 9 | Instead of mapping shape to a variable, let us specify a value for shape. In this case, `shape` is not wrapped inside `aes()` as we are not mapping it to a variable. | Instead of mapping shape to a variable, let us specify a value for shape. In this case, `shape` is outside `aes()` because we are not mapping it to a variable. |
| `ggplot2-aesthetics.qmd:137` | 1, 2, 4 | Background color cannot be added for all shapes. In the below example, we try to modify the background color using the `fill` argument but it does not work. | Not all shapes take a background color. In the example below, we try to modify the background color using the `fill` argument but it does not work. |
| `ggplot2-aesthetics.qmd:145` | 2, 3, 5 | Since shapes 21â€“25 have both a fill and a border, the `fill` argument will add background color in the below case. | Since shapes 21â€“25 have both a fill and a border, the `fill` argument adds the background color: |
| `ggplot2-aesthetics.qmd:160` | 2, 9 | Let us map size of points to a variable. It is advised to map size only to continuous variables and not categorical variables. | Let us map the size of points to a variable. Map size only to continuous variables, not categorical variables. |
| `ggplot2-aesthetics.qmd:185` | 8, 9 | So far we have focussed on `geom_point()` to learn how to map aesthetics to variables. To explore line type and line width, we will use `geom_line()`. In the previous chapter, we used `geom_line()` to build line charts. Now we will | So far we have focused on `geom_point()` to learn how to map aesthetics to variables. To explore line type and line width, we will use `geom_line()`. In the previous chapter, we used `geom_line()` to build line charts. Now we will |
| `ggplot2-aesthetics.qmd:203` | 1, 4 | A line chart can be created using `geom_line()`. In the below example, we | We can create a line chart using `geom_line()`. In the example below, we |
| `ggplot2-aesthetics.qmd:219` | 1, 2 | The line type can also be mentioned in the following way: | The line type can also be specified by name: |
| `ggplot2-aesthetics.qmd:226` | 2, 5 | The width of the line can be modified using the `linewidth` argument. | Use the `linewidth` argument to modify the width of the line. |
| `ggplot2-aesthetics.qmd:233` | 1, 3, 4 | Now let us map the aesthetics to the variables. The data used in the above example cannot be used as we need a variable with index names. We will use | Now let us map the aesthetics to the variables. We cannot use the data from the example above, because we need a variable with index names. We will use the |
| `ggplot2-aesthetics.qmd:246` | 4, 13 | To map the aesthetics to a variable, we must use the `group` argument. In the below example, we map the aesthetics to `index`. But we cannot distinguish between the lines as their color, width and line type are the same. We have Now, let us ensure that we can distinguish and identify them using different | To map the aesthetics to a variable, we must use the `group` argument. In the example below, we map the aesthetics to `index`. But we cannot distinguish between the lines, as their color, width and line type are the same. We have Now let us ensure that we can distinguish and identify them using different |
| `ggplot2-aesthetics.qmd:258` | 2, 9 | Let us begin by ensuring that the lines have different color using the `color` argument within `aes()` and assigning it the variable `index`. | Let us begin by giving the lines different colors with the `color` argument, mapped to `index` inside `aes()`. |
| `ggplot2-aesthetics.qmd:273` | 3, 4 | In the below instance, we assign different width to the lines using the `linewidth` argument. | In the example below, we assign a different width to each line using the `linewidth` argument. |
| `ggplot2-aesthetics.qmd:312` | 4, 2 | In all the above cases, you can observe that when we are mapping aesthetics such as color, fill, shape, size or linetype to variables, they are all wrapped inside `aes()`. | In all the cases above, you can observe that when we map aesthetics such as color, fill, shape, size or linetype to variables, they are all wrapped inside `aes()`. |

Refusals: The syllabus bullets, the em-dash parenthetical on `EuStockMarkets` (numbers and dates are protected) and the closing "Remember…" paragraph stay. "In the section below … In the next section" is kept as orientation inside a long section; cutting it would delete a signpost he uses.

## Labels

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-labels.qmd:44` | 3 | There are two ways to add title to a plot: | There are two ways to add a title to a plot: |
| `ggplot2-labels.qmd:64` | 3 | You can add labels to the axis using: | You can add labels to the axes using: |
| `ggplot2-labels.qmd:78` | 1, 2 | The `labs()` function can be used to add the following to a plot: | We can use the `labs()` function to add the following to a plot: |
| `ggplot2-labels.qmd:94` | 9, 3 | In certain scenarios, you may want to modify the range of the axis. In ggplot2, we can achieve this using: | Sometimes you may want to modify the range of an axis. In ggplot2, we can do this using: |
| `ggplot2-labels.qmd:104` | 2 | - in all of the above functions, the first element represents the lower limit and the second element represents the upper limit | - in all of these functions, the first element is the lower limit and the second element is the upper limit |
| `ggplot2-labels.qmd:108` | 4 | In the below example, we limit the range of the X axis between `0` and `600` using `xlim`. | In the example below, we limit the range of the X axis between `0` and `600` using `xlim`. |
| `ggplot2-labels.qmd:128` | 3, 9 | Let us use `expand_limits()` to limit the range of both the X and Y axis. The first input is the range for the X axis and the second input for the Y axis. In both the cases, we use a numeric vector of length 2 to specify the lower and upper limit. | Let us use `expand_limits()` to limit the range of both the X and Y axis. The first input is the range for the X axis and the second input the range for the Y axis. In both cases, we use a numeric vector of length 2 to specify the lower and upper limit. |
| `ggplot2-labels.qmd:141` | 3, 8, 9 | If you want to remove the axis labels all together, use the `theme()` function. It allows us to modify every aspect of the theme of the plot. Within `theme()`, set the following to `element_blank()`. | If you want to remove the axis labels altogether, use the `theme()` function. It allows us to modify every aspect of the plot theme. Within `theme()`, set the following to `element_blank()`. |
| `ggplot2-labels.qmd:148` | 2, 3 | `element_blank()` will remove the title of the X and Y axis. | `element_blank()` removes the title of the X and Y axes. |
| `ggplot2-labels.qmd:158` | 2, 9 | To format the title or the axis labels, we have to modify the theme of the plot using the `theme()` function. We can modify: | To format the title or the axis labels, we modify the theme of the plot using `theme()`. We can modify: |
| `ggplot2-labels.qmd:168` | 2 | In addition to `theme()`, we will also use `element_text()`. It should be used whenever you want to modify the appearance of any text element of your plot. | In addition to `theme()`, we will also use `element_text()`. Use it whenever you want to modify the appearance of any text element of your plot. |
| `ggplot2-labels.qmd:173` | 4, 9 | In the below example, we use the `color` argument within `element_text()` to modify the color of the title of the plot to `'blue'`. | In the example below, we use the `color` argument within `element_text()` to modify the color of the plot title to `'blue'`. |
| `ggplot2-labels.qmd:202` | 1, 9 | The `face` argument can be used to modify the font face of the title of the plot. | We can use the `face` argument to modify the font face of the plot title. |
| `ggplot2-labels.qmd:212` | 2, §3a.11 | The size of the title of the plot can be modified using the `size` argument. | Use the `size` argument to modify the size of the plot title. |
| `ggplot2-labels.qmd:224` | 8 | will be left-aligned and viceversa. | will be left-aligned and vice versa. |

Refusals: The syllabus, the heading "Axis Range" and the `element_blank()` bullet list stay. "Ensure that" in "Ensure that the labels are intuitive…" is a guardrail and stays. "viceversa" becomes "vice versa" only; the sentence around it is otherwise his.

## Text Annotations

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-text-annotations.qmd:17` | 3 | In this chapter, we will learn to add text to the plots. | In this chapter, we will learn to add text to plots. |
| `ggplot2-text-annotations.qmd:27` | 2, 8, 9 | We will use the `annotate()` function to add custom text to the plots. You can use the `annotate()` function to add rectangles/segments/pointrange as well but our focus will be on adding text. Let us start with a simple scatter plot. | We will use the `annotate()` function to add custom text to plots. You can also use the `annotate()` function to add rectangles, segments or pointranges, but our focus will be on text. Let us start with a simple scatter plot. |
| `ggplot2-text-annotations.qmd:50` | 2, 3, 9 | and continue to examine the relationship between displacement and miles per gallon. To add the text, we have to indicate that we are using `annotate()` for adding text, and we do this by ensuring that the first input is the word `'text'`. Now, ggplot2 knows that it should add a text to the plot but it still needs other information such as: - where should the text appear on the plot i.e. location of the text We will provide the location by specifying points on the X and Y axis which are also the second and third inputs to `annotate()` and the final input is the text itself, which in our example is `'Sample Text'`. | and examine the relationship between displacement and miles per gallon. To add the text, we indicate that we are using `annotate()` for text, and we do this by making the first input the word `'text'`. Now, ggplot2 knows that it should add text to the plot but it still needs other information such as: - where the text should appear on the plot, i.e. the location of the text We will provide the location by specifying points on the X and Y axis. These are also the second and third inputs to `annotate()`, and the final input is the text itself, which in our example is `'Sample Text'`. |
| `ggplot2-text-annotations.qmd:70` | 4, 9 | Now that we know how to add text, let us look at modifying the appearance of the text. To change the color, use the `color` argument. In the below example, we modify the color to `'red'`. | Now that we know how to add text, let us look at modifying its appearance. To change the color, use the `color` argument. In the example below, we modify the color to `'red'`. |
| `ggplot2-text-annotations.qmd:82` | 2 | The `size` argument can be used to modify the size of the text. | Use the `size` argument to modify the size of the text. |
| `ggplot2-text-annotations.qmd:103` | 2, 4 | The angle of the text can also be modified using the `angle` argument. In the below example, we modify the angle of the text to `25`. | Use the `angle` argument to modify the angle of the text. In the example below, we modify the angle of the text to `25`. |

Refusals: The four-part intro and the argument list stay. The `{webr-r}`-free chapter has no answer blocks to touch; the callout types and the exercise list are unchanged.

## Scatter Plots

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-scatter-plot.qmd:35` | 9 | As we did in the previous chapter, let us begin by creating a scatter plot using `geom_point()` to examine the relationship between displacement and miles per gallon using the mtcars data. | As we did in the previous chapter, let us begin by creating a scatter plot with `geom_point()` to examine the relationship between displacement and miles per gallon in the mtcars data. |
| `ggplot2-scatter-plot.qmd:59` | 8, 6 | If you want to avoid over plotting, use the `position` argument and supply it the value `'jitter'`. It adds random noise to a plot and makes it easier to read. | If you want to avoid overplotting, use the `position` argument and supply it the value `'jitter'`. It adds random noise to a plot and makes the points easier to read. |
| `ggplot2-scatter-plot.qmd:68` | 8 | Another way to avoid over plotting is to use `geom_jitter()`. | Another way to avoid overplotting is to use `geom_jitter()`. |
| `ggplot2-scatter-plot.qmd:86` | 2, 4 | To modify the color of the points, you can use the `color` argument and supply it a valid color name. In the below example, we change the color of the | To modify the color of the points, use the `color` argument and supply it a valid color name. In the example below, we change the color of the |
| `ggplot2-scatter-plot.qmd:98` | 1 | The transparency of the color can be modified using the `alpha` argument. It | We can modify the transparency of the color using the `alpha` argument. It |
| `ggplot2-scatter-plot.qmd:108` | 1 | The shape of the points can be modified using the `shape` argument. It | We can modify the shape of the points using the `shape` argument. It |
| `ggplot2-scatter-plot.qmd:118` | 1, 2 | The size of the points can be modified using the `size` argument. It can take | We can modify the size of the points using the `size` argument. It takes |
| `ggplot2-scatter-plot.qmd:128` | 9 | So far, we have specified values for color, shape, size etc. Now, let us map | So far, we have specified values for color, shape and size. Now let us map |
| `ggplot2-scatter-plot.qmd:133` | 6 | You can modify the color of the points by mapping them to a variable using `aes()`. It allows you to examine the relationship between two continuous variables at different levels of a categorical variable. | You can modify the color of the points by mapping them to a variable using `aes()`. This examines the relationship between two continuous variables at different levels of a categorical variable. |
| `ggplot2-scatter-plot.qmd:143` | 1, 8 | The color can be mapped to a conitnuous variable as well and in this case you will be able to examine the relationship betweem two continuous variable for a range of value of a third variable. | We can also map the color to a continuous variable; in this case, you will be able to examine the relationship between two continuous variables for a range of values of a third variable. |
| `ggplot2-scatter-plot.qmd:155` | 4, 2 | Shape can be mapped to categorical variables. In the below example, we use ggplot2 will throw an error if you map shape to a continuous variable. | Shape can be mapped to categorical variables. In the example below, we use ggplot2 throws an error if you map shape to a continuous variable. |
| `ggplot2-scatter-plot.qmd:166` | 3, 4 | Size must be always mapped to continuous variables. In the below example, we have mapped size to `hp` variable. | Size must always be mapped to continuous variables. In the example below, we have mapped size to the `hp` variable. |
| `ggplot2-scatter-plot.qmd:174` | 4, 2 | If you map size to categorical data as shown in the below example, ggplot2 will throw a warning. | If you map size to categorical data, as shown in the example below, ggplot2 throws a warning. |
| `ggplot2-scatter-plot.qmd:184` | 3, 2, 4 | `geom_smooth()` allows us to fit a regression line to the plot. By default it will use least squares method to fit the line but you can also use the loess method. In the below example, we fit a regression line using the least squares | `geom_smooth()` allows us to fit a regression line to the plot. By default, it uses the least squares method to fit the line, but you can also use the loess method. In the example below, we fit a regression line using the least squares |
| `ggplot2-scatter-plot.qmd:195` | 4, 2 | The `se` argument will add a confidence interval around the regression line, if set to `TRUE`. | If set to `TRUE`, the `se` argument adds a confidence interval around the regression line. |
| `ggplot2-scatter-plot.qmd:208` | 4 | In the below example, we use the loess method instead of the default least | In the example below, we use the loess method instead of the default least |

Refusals: The webR cell and its three-sentence lead-in are untouched (cell count stays at one). The `Try it in your browser` callout, the four headings and the exercise list stay. The jitter recipe and the `lm()` output chunk are protected.

## Line Graphs

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-line-graph.qmd:53` | 4 | To create a line chart, use `geom_line()`. In the below example, we examine the | To create a line chart, use `geom_line()`. In the example below, we examine the |
| `ggplot2-line-graph.qmd:64` | 4 | color name. In the below example, we modify the color of the line to `'blue'`. | color name. In the example below, we modify the color of the line to `'blue'`. |
| `ggplot2-line-graph.qmd:74` | 1, 2, 9 | The line type can be modified using the `linetype` argument. It can take 7 different values. You can specify the line type either using numbers or words as shown below: | We can modify the line type using the `linetype` argument. It takes 7 different values. You can specify the line type using numbers or words: |
| `ggplot2-line-graph.qmd:93` | 1, 4 | The above example can be recreated by supplying the value `'dashed'` instead | We can recreate the example above by supplying the value `'dashed'` instead |
| `ggplot2-line-graph.qmd:103` | 1, 2 | The width of the line can be modified using the `linewidth` argument. It can take | We can modify the width of the line using the `linewidth` argument. It takes |
| `ggplot2-line-graph.qmd:115` | 1, 4 | Now let us map the aesthetics to the variables. The data used in the above example cannot be used as we need a variable with index names. We will use | Now let us map the aesthetics to the variables. We cannot use the data from the example above, because we need a variable with index names. We will use the |
| `ggplot2-line-graph.qmd:127` | 1, 3, 9 | In the original data, to plot the price trend of multiple indices we will have to use `geom_line()` multiple times. But in the reshaped data, we have the index names as one of the variables and this can be used along with the `group` argument to plot data of multiple indices with a single line of code as shown below. By mapping index to the `group` argument, we have plotted data of all indices. | In the original data, plotting the price trend of multiple indices requires `geom_line()` several times. In the reshaped data, the index names are one of the variables, and we can use them with the `group` argument to plot all the indices in a single line of code. By mapping index to the `group` argument, we plot data of all indices. |
| `ggplot2-line-graph.qmd:138` | 1, 3, 2 | In the above plot, we cannot distinguish between the lines and there is no way the trend of different indices, let us map the `color` argument to the variable index as shown below. Now, each index will be represented by line of different color. | In the plot above, we cannot distinguish between the lines, and there is no way the trend of different indices, let us map the `color` argument to the variable index. Now, each index is represented by a line of a different color. |
| `ggplot2-line-graph.qmd:148` | 5, 3, 2 | We can map `linetype` argument to index as well. In this case, each index will be represented by a different line type. | We can also map the `linetype` argument to index. In this case, each index is represented by a different line type. |
| `ggplot2-line-graph.qmd:156` | 5, 9 | We can map the width of the line to the variable index as well. But in this case, the plot does not look either elegant or intuitive. | We can also map the width of the line to the variable index. But in this case, the plot does not look elegant or intuitive. |
| `ggplot2-line-graph.qmd:164` | 4 | Remember that in all the above cases, we mapped the arguments to a variable | Remember that in all the cases above, we mapped the arguments to a variable |

Refusals: The `EuStockMarkets` description (indices, countries, dates) and the linetype table stay: numbers and data names are protected. "Let us modify the line type to dashed style…" stays as written.

## Bar Plots

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-bar-plot.qmd:57` | 4 | categorical variable. In the below example, we plot the number of visits for | categorical variable. In the example below, we plot the number of visits for |
| `ggplot2-bar-plot.qmd:67` | 1, 2, 4 | The color of the bars can be modified using the `fill` argument. In the below example, we assign different colors to the 3 bars in the plot. If you use the `color` argument, it will modify the color of the bar line and not the | We can modify the color of the bars using the `fill` argument. In the example below, we assign different colors to the 3 bars in the plot. If you use the `color` argument, it modifies the color of the bar line, not the |
| `ggplot2-bar-plot.qmd:79` | 3, 1, 4 | If you want to look at distribution of one categorical variable across the ggplot2, a stacked bar plot is created by mapping the `fill` argument to the second categorical variable. In the below example, we have mapped `fill` to `referrer` variable. | If you want to look at the distribution of one categorical variable across the ggplot2, we create a stacked bar plot by mapping the `fill` argument to the second categorical variable. In the example below, we have mapped `fill` to the `referrer` variable. |
| `ggplot2-bar-plot.qmd:94` | 4, 9 | grouped by levels. In the below example, we create a grouped bar plot and you stacked as was shown in the previous example. To create a grouped bar plot, use the `position` argument and set it to `'dodge'`. | grouped by levels. In the example below, we create a grouped bar plot and you stacked. To create a grouped bar plot, use the `position` argument and set it to `'dodge'`. |
| `ggplot2-bar-plot.qmd:106` | 2, 15 | In a proportional bar plot, the height of all the bars is proportional or same. To create a proportional bar plot, use the `position` argument and set it to `'fill'`. | In a proportional bar plot, all the bars have the same height. To create a proportional bar plot, use the `position` argument and set it to `'fill'`. |
| `ggplot2-bar-plot.qmd:116` | 1 | A horizontal bar plot can be created by flipping the coordinate axes of a | We can create a horizontal bar plot by flipping the coordinate axes of a |
| `ggplot2-bar-plot.qmd:127` | 1, 9 | The color of the bar line can be modified using the `color` argument. The color can be specified either using its name or hex code. | We can modify the color of the bar line using the `color` argument. Specify the color using its name or hex code. |
| `ggplot2-bar-plot.qmd:135` | 2 | To modify the line type of the bar line, use the `linetype` argument. It can take values between `0` and `6`. | To modify the line type of the bar line, use the `linetype` argument. It takes values between `0` and `6`. |
| `ggplot2-bar-plot.qmd:143` | 1, 2 | The width of the bar line can be modified using the `linewidth` argument. It can take any value greater than `0`. | We can modify the width of the bar line using the `linewidth` argument. It takes any value greater than `0`. |

Refusals: The data chunk and its column types stay. The `position = 'dodge'` / `'fill'` recipes, the exercise list and the "Where to go next" list are untouched.

## Box Plots

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-box-plot.qmd:33` | 3, 8 | is useful for detecting outliers and for comparing distributions and shows the shape, central tendancy and variability of the data. | is useful for detecting outliers and for comparing distributions, and it shows the shape, central tendency and variability of the data. |
| `ggplot2-box-plot.qmd:52` | 3, 9 | We are going to use two different data sets in this chapter. Both the data sets have the same data but are in different formats. | We will use two different data sets in this chapter. Both data sets have the same data but in different formats. |
| `ggplot2-box-plot.qmd:62` | 3, 4 | you can create box plot for a single variable. Map the variable to `y` and add `geom_boxplot()`. | you can create a box plot for a single variable. Map the variable to `y` and add `geom_boxplot()`. |
| `ggplot2-box-plot.qmd:83` | 4, 9 | For the rest of the chapter, we will use the below data set. Instead of 5 columns, we have two columns. One for the stock names and another for returns. | For the rest of the chapter, we will use the data set below. Instead of 5 columns, we have two. One for the stock names and another for returns. |
| `ggplot2-box-plot.qmd:93` | 4, 3, 8 | With the above data, let us create a box plot where we compate the distribution of stock returns of different companies. We map X axis to the column with stock names and Y axis to the column with stock returns. Note that, the column names are wrapped inside `aes()`. | With the data above, let us create a box plot where we compare the distribution of stock returns of different companies. We map the X axis to the column with stock names and the Y axis to the column with stock returns. Note that the column names are wrapped inside `aes()`. |
| `ggplot2-box-plot.qmd:103` | 8, 13 | To create a horizontal bar plot, we can use `coord_flip()` which will flip the | To create a horizontal box plot, we can use `coord_flip()`, which flips the |
| `ggplot2-box-plot.qmd:116` | 1, §3a.11 | Notches are used to compare medians. You can use the `notch` argument and set | We use notches to compare medians. Use the `notch` argument and set |
| `ggplot2-box-plot.qmd:147` | 9 | To modify the color of the outliers, use the `outlier.color` argument. The color can be specified either using its name or the associated hex code. | To modify the color of the outliers, use the `outlier.color` argument. Specify the color using its name or the associated hex code. |
| `ggplot2-box-plot.qmd:155` | 1, 2 | The shape of the outlier can be modified using the `outlier.shape` argument. It can take values between `0` and `25`. | We can modify the shape of the outlier using the `outlier.shape` argument. It takes values between `0` and `25`. |
| `ggplot2-box-plot.qmd:163` | 1, 2 | The size of the outlier can be modified using the `outlier.size` argument. It can take any value greater than `0`. | We can modify the size of the outlier using the `outlier.size` argument. It takes any value greater than `0`. |
| `ggplot2-box-plot.qmd:171` | 2, 9 | You can play around with the transparency of the outlier using the `outlier.alpha` argument. It can take values between `0` and `1`. | You can change the transparency of the outlier using the `outlier.alpha` argument. It takes values between `0` and `1`. |
| `ggplot2-box-plot.qmd:191` | 1, 9 | The background color of the box can be modified using the `fill` argument. The color can be specified either using its name or the associated hex code. | We can modify the background color of the box using the `fill` argument. Specify the color using its name or the associated hex code. |
| `ggplot2-box-plot.qmd:199` | 2 | To modify the transparency of the background color, use the `alpha` argument. It can take any value between `0` and `1`. | To modify the transparency of the background color, use the `alpha` argument. It takes any value between `0` and `1`. |
| `ggplot2-box-plot.qmd:207` | 1, 9 | The color of the border can be modified using the `color` argument. The color can be specified either using its name or the associated hex code. | We can modify the color of the border using the `color` argument. Specify the color using its name or the associated hex code. |
| `ggplot2-box-plot.qmd:215` | 1, 2 | The width of the border can be changed using the `linewidth` argument. It can take | We can change the width of the border using the `linewidth` argument. It takes |
| `ggplot2-box-plot.qmd:223` | 2 | To change the line type of the border, use the `linetype` argument. It can take | To change the line type of the border, use the `linetype` argument. It takes |
| `ggplot2-box-plot.qmd:233` | 5, 4, 9 | Instead of specifying values, we can map `fill` and `color` to variables as well. In the below example, we map `fill` to the variable stock. It assigns different colors to the different stocks. | Instead of specifying values, we can also map `fill` and `color` to variables. In the example below, we map `fill` to the variable stock. It assigns a different color to each stock. |
| `ggplot2-box-plot.qmd:242` | 9 | Let us map `color` to the variable stock. It will assign different colors to the box borders. | Let us map `color` to the variable stock. It will assign a different color to each box border. |

Refusals: The structure bullets stay (they are definition prose with no actor to restore). The notch and jitter sections, the chunk labels and the exercise list are untouched. One wording slip is corrected: the horizontal section is a box plot, not a "horizontal bar plot" (line 103).

## Histograms

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-histogram.qmd:30` | 2, 9 | A histogram is a plot that can be used to examine the shape and spread of continuous data. It looks very similar to a bar graph and can be used to detect outliers and skewness in data. The histogram graphically shows the following: | A histogram examines the shape and spread of continuous data. It looks very similar to a bar graph and can be used to detect outliers and skewness in data. A histogram graphically shows the following: |
| `ggplot2-histogram.qmd:40` | 1, 3 | To construct a histogram, the data is split into intervals called bins. The intervals may or may not be equal sized. For each bin, the number of data points that fall into it are counted (frequency). The Y axis of the histogram represents the frequency and the X axis represents the variable. | To construct a histogram, we split the data into intervals called bins. The intervals may or may not be of equal size. For each bin, we count the number of data points that fall into it (frequency). The Y axis of the histogram represents the frequency and the X axis represents the variable. |
| `ggplot2-histogram.qmd:74` | 3, 4 | name within `aes()`. In the below example, we create histogram of the variable | name within `aes()`. In the example below, we create a histogram of the variable |
| `ggplot2-histogram.qmd:84` | 4 | The default number of bins in ggplot2 is `30`. You can modify the number of bins using the `bins` argument. In the below example, we create a histogram | The default number of bins in ggplot2 is `30`. You can modify the number of bins using the `bins` argument. In the example below, we create a histogram |
| `ggplot2-histogram.qmd:97` | 4 | to modify the background color of the histogram. In the below case, we change | to modify the background color of the histogram. In the example below, we change |
| `ggplot2-histogram.qmd:105` | 18, 1, 2 | As we have learnt before, the transparency of the background color can be modified using the `alpha` argument. It can take any value between `0` and `1`. | As we have learned before, we can modify the transparency of the background color using the `alpha` argument. It takes any value between `0` and `1`. |
| `ggplot2-histogram.qmd:113` | 1, 9 | The color of the histogram border can be modified using the `color` argument. The color can be specified either using its name or the associated hex code. | We can modify the color of the histogram border using the `color` argument. Specify the color using its name or the associated hex code. |
| `ggplot2-histogram.qmd:123` | 4, 3 | Let us modify the bins, the background and border color of the histogram in the below example. | Let us modify the bins, and the background and border color of the histogram in the example below. |
| `ggplot2-histogram.qmd:133` | 2, 9, 4 | Another way to control the number of bins in a histogram is by using the `binwidth` argument. In this case, we specify the width of the bins instead of the number of bins. As you can see, in the below example, we do not use the `bins` argument when using the `binwidth` argument. You can use either of them but not both. | Another way to control the number of bins in a histogram is to use the `binwidth` argument. In this case, we specify the width of the bins instead of their number. In the example below, we do not use the `bins` argument when using `binwidth`. You can use either of them but not both. |
| `ggplot2-histogram.qmd:145` | 1, 2 | The line type of the histogram border can be modified using the `linetype` argument. It can take any integer value between `0` and `6`. | We can modify the line type of the histogram border using the `linetype` argument. It takes any integer value between `0` and `6`. |
| `ggplot2-histogram.qmd:156` | 2 | Use the `linewidth` argument to modify the width of the border of the histogram bins. It can take any value greater than `0`. | Use the `linewidth` argument to modify the width of the border of the histogram bins. It takes any value greater than `0`. |
| `ggplot2-histogram.qmd:167` | 5, 4, 9 | You can map the aesthetics to variables as well. In the below example, we map variables as well. | You can also map the aesthetics to variables. In the example below, we map variables too. |

Refusals: The two long paragraphs at 30 and 40 were unwrapped from single long lines only as part of the rewrite; no numbers or terms changed. The bin and binwidth recipes, the chunk labels and the exercise list are untouched.

## Modify Axis

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-modify-axis.qmd:3` | 3 | In this chapter, we will learn how to modify the X and Y axis using the following functions: | In this chapter, we will learn how to modify the X and Y axes using the following functions: |
| `ggplot2-modify-axis.qmd:31` | 3, 1 | If the X and Y axis represent continuous data, we can use `scale_x_continuous()` and `scale_y_continuous()` to modify the axis. They take | If the X and Y axes represent continuous data, we can use `scale_x_continuous()` and `scale_y_continuous()` to modify them. They take |
| `ggplot2-modify-axis.qmd:41` | 3 | Let us continue with the scatter plot we have used in previous chapter. | Let us continue with the scatter plot we have used in the previous chapter. |
| `ggplot2-modify-axis.qmd:48` | 2, 4 | The `name` argument is used to modify the X axis label. In the below example, | The `name` argument modifies the X axis label. In the example below, |
| `ggplot2-modify-axis.qmd:59` | 9, 3 | 2 i.e. 2 values, the lower and upper limit of the range. It is an alternative for `xlim()`. | 2, the lower and upper limit of the range. It is an alternative to `xlim()`. |
| `ggplot2-modify-axis.qmd:67` | 4, 3, 9 | In the above plot, the ticks on the X axis appear at `0`, `200`, `400` and `600`. Let us say we want the ticks to appear more closer i.e. the difference between the tick should be reduced by `50`. The `breaks` argument will allow us to specify where the ticks appear. It takes a numeric vector equal to the length of the number of ticks. | In the plot above, the ticks on the X axis appear at `0`, `200`, `400` and `600`. Let us say we want the ticks to appear closer together, i.e. the difference between the ticks should be reduced by `50`. The `breaks` argument allows us to specify where the ticks appear. It takes a numeric vector equal to the number of ticks. |
| `ggplot2-modify-axis.qmd:79` | 3, 4 | We can change the tick labels using the `labels` argument. In the below example, we use words instead of numbers. When adding labels, we need to ensure that the length of the `breaks` and `labels` are same. | We can change the tick labels using the `labels` argument. In the example below, we use words instead of numbers. When adding labels, we need to ensure that `breaks` and `labels` have the same length. |
| `ggplot2-modify-axis.qmd:90` | 1, 4, 2 | The position of the axes can be changed using the `position` argument. In the below example, we can move the axes to the top of the plot by supplying the | We can change the position of the axes using the `position` argument. In the example below, we move the axes to the top of the plot by supplying the |
| `ggplot2-modify-axis.qmd:131` | 3, 1 | If the X and Y axis represent discrete or categorical data, `scale_x_discrete()` and `scale_y_discrete()` can be used to modify them. They take the following arguments: | If the X and Y axes represent discrete or categorical data, we can use `scale_x_discrete()` and `scale_y_discrete()` to modify them. They take the following arguments: |
| `ggplot2-modify-axis.qmd:140` | 4, 9 | The above options serve the same purpose as in the case of continuous scales. | The options above serve the same purpose as the continuous scales. |

Refusals: The callouts (moved above the code in the earlier fix) are untouched, as are the headings and their anchors. "the data is kept, and only the visible window changes" stays. Function names and their arguments are unchanged.

## Modify Legend

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-modify-legend.qmd:31` | 18 | So far, we have learnt to modify the components of a legend using `scale_*` | So far, we have learned to modify the components of a legend using the `scale_*` |
| `ggplot2-modify-legend.qmd:39` | 1, 2 | The horizontal alignment of the title can be managed using the `title.hjust` argument. It can take any value between `0` and `1`. | We can manage the horizontal alignment of the title using the `title.hjust` argument. It takes any value between `0` and `1`. |
| `ggplot2-modify-legend.qmd:45` | 4 | In the below example, we align the title to the center by assigning the value | In the example below, we align the title to the center by assigning the value |
| `ggplot2-modify-legend.qmd:66` | 1, 3 | The position of the title can be managed using `title.position` argument. It | We can manage the position of the title using the `title.position` argument. It |
| `ggplot2-modify-legend.qmd:86` | 1 | The position of the label can be managed using the `label.position` argument. | We can manage the position of the label using the `label.position` argument. |
| `ggplot2-modify-legend.qmd:94` | 4 | In the below example, we position the label at right. | In the example below, we position the label at right. |
| `ggplot2-modify-legend.qmd:104` | 1, 2 | The horizontal alignment of the label can be managed using the `label.hjust` argument. It can take any value between `0` and `1`. | We can manage the horizontal alignment of the label using the `label.hjust` argument. It takes any value between `0` and `1`. |
| `ggplot2-modify-legend.qmd:110` | 4 | In the below example, we align the label to the center by assigning the value | In the example below, we align the label to the center by assigning the value |
| `ggplot2-modify-legend.qmd:125` | 1 | The vertical alignment of the label can be managed using the `label.vjust` | We can manage the vertical alignment of the label using the `label.vjust` |
| `ggplot2-modify-legend.qmd:137` | 9, 3 | The direction of the label can be either horizontal or vertical and it can be set using the `direction` argument. | The direction of the label can be horizontal or vertical, and we set it using the `direction` argument. |
| `ggplot2-modify-legend.qmd:148` | 1, 4 | The label can be spread across multiple rows using the `nrow` argument. In the below example, the label is spread across 2 rows. | We can spread the label across multiple rows using the `nrow` argument. In the example below, the label is spread across 2 rows. |
| `ggplot2-modify-legend.qmd:159` | 1, 2, 9 | The order of the labels can be reversed using the `reverse` argument. We need to supply logical values i.e. either `TRUE` or `FALSE`. If `TRUE`, the order will be reversed. | We can reverse the order of the labels using the `reverse` argument. Supply a logical value, `TRUE` or `FALSE`. If `TRUE`, the order is reversed. |
| `ggplot2-modify-legend.qmd:182` | 9, 2 | guide for `color`, `fill` or `shape` i.e. when the aesthetics have been mapped `guide_colorbar()` which will allow us to modify the legend when the aesthetics | guide for `color`, `fill` or `shape`, i.e. when the aesthetics have been mapped `guide_colorbar()`, which allows us to modify the legend when the aesthetics |
| `ggplot2-modify-legend.qmd:200` | 1, 3 | The width of the bar can be modified using the `barwidth` argument. It is used inside the `guide_colorbar()` function which itself is supplied to the `guide` | We can modify the width of the bar using the `barwidth` argument. It is used inside the `guide_colorbar()` function, which is itself supplied to the `guide` |
| `ggplot2-modify-legend.qmd:213` | 1 | Similarly, the height of the bar can be modified using the `barheight` argument. | Similarly, we can modify the height of the bar using the `barheight` argument. |
| `ggplot2-modify-legend.qmd:235` | 2, 9 | The ticks of the bar can be removed using the `ticks` argument and setting it | We can remove the ticks of the bar by setting the `ticks` argument |
| `ggplot2-modify-legend.qmd:247` | 1, 2 | The upper and lower limits of the bars can be drawn or undrawn using the | We can draw or hide the upper and lower limits of the bars using the |
| `ggplot2-modify-legend.qmd:259` | 1, 9 | The `guides()` function can be used to create multiple legends to act as a guide for `color`, `shape`, `size` etc. as shown below. First, we map color, shape and size to different variables. Next, in the `guides()` function, we supply values to each of the above aesthetics to indicate the type of legend. | We can use the `guides()` function to create multiple legends, one for each of `color`, `shape` and `size`. First, we map color, shape and size to different variables. Next, in the `guides()` function, we supply values to each of the above aesthetics to indicate the type of legend. |
| `ggplot2-modify-legend.qmd:274` | 4, 9 | `guide_*` family of functions. In the below example, we use `guide_colorbar()` for the legend acting as guide for color mapped to a continuous variable and `guide_legend()` for the legends acting as guide for shape/size mapped to | `guide_*` family of functions. In the example below, we use `guide_colorbar()` for the legend acting as guide for color mapped to a continuous variable, and `guide_legend()` for the legends acting as guide for shape and size mapped to |

Refusals: The opening one-line summary stays (it names the functions without code markup, so adding backticks would change inline-code spans). The argument lists and all guide recipes are untouched. `title.hjust`, `label.vjust`, `nbin`, `draw.ulim`/`draw.llim` stay: they are the chapter's subject, and the learner review's consolidation is out of scope.

## Legend: Color and Fill

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-legend-color-fill.qmd:56` | 9, 4 | supply a character vector of color names. The number of colors specified must be equal to the number of levels in the categorical variable mapped. In the below example, `cyl` has 3 levels (4, 6, 8) and hence we have specified | supply a character vector of color names. The number of colors must equal the number of levels in the categorical variable mapped. In the example below, `cyl` has 3 levels (4, 6, 8) and hence we have specified |
| `ggplot2-legend-color-fill.qmd:70` | 9 | intuitive. If the user does not know the underlying data, they will not be able to make any sense out of it. Let us change it to `Cylinders` using the `name` | intuitive. If the user does not know the underlying data, they will not make any sense of it. Let us change it to `Cylinders` using the `name` |
| `ggplot2-legend-color-fill.qmd:81` | 3 | Now, the user will know that the different colors represent number of cylinders in | Now, the user will know that the different colors represent the number of cylinders in |
| `ggplot2-legend-color-fill.qmd:86` | 9, 2 | Let us assume that we want to modify the data to be displayed i.e. instead of desire to look at only cars with at least 6 cylinders. One way to approach this would be to filter the data using `filter` from dplyr and then visualize it. | Let us assume that we want to modify the data to be displayed: instead of want to look at only cars with at least 6 cylinders. One way to do this is to filter the data using `filter` from dplyr and then visualize it. |
| `ggplot2-legend-color-fill.qmd:108` | 1 | The labels in the legend can be modified using the `labels` argument. Let us | We can modify the labels in the legend using the `labels` argument. Let us |
| `ggplot2-legend-color-fill.qmd:121` | 3, 4 | When there are large number of levels in the mapped variable, you may not below case, we use the `breaks` argument to ensure that the labels in legend represent two levels (4, 8) of the mapped variable. | When there are a large number of levels in the mapped variable, you may not example below, we use the `breaks` argument to ensure that the labels in the legend represent two levels (4, 8) of the mapped variable. |
| `ggplot2-legend-color-fill.qmd:153` | 3 | we will learn to modify the following using `scale_fill_manual()` when `fill` is mapped to categorical variables: | We will learn to modify the following using `scale_fill_manual()` when `fill` is mapped to categorical variables: |
| `ggplot2-legend-color-fill.qmd:177` | 9 | The title of the legend (`factor(cyl)`) is not very intuitive. If the user does not know the underlying data, they will not be able to make any sense out of it. Let us change it to `Cylinders` using the `name` argument. | The title of the legend (`factor(cyl)`) is not very intuitive. If the user does not know the underlying data, they will not make any sense of it. Let us change it to `Cylinders` using the `name` argument. |
| `ggplot2-legend-color-fill.qmd:191` | 9, 4 | supply a character vector of color names. The number of colors specified must be equal to the number of levels in the categorical variable mapped. In the below example, `cyl` has 3 levels (4, 6, 8) and hence we have specified | supply a character vector of color names. The number of colors must equal the number of levels in the categorical variable mapped. In the example below, `cyl` has 3 levels (4, 6, 8) and hence we have specified |
| `ggplot2-legend-color-fill.qmd:204` | 1 | The labels in the legend can be modified using the `labels` argument. Let us | We can modify the labels in the legend using the `labels` argument. Let us |
| `ggplot2-legend-color-fill.qmd:217` | 9, 2 | Let us assume that we want to modify the data to be displayed i.e. instead of desire to look at only cars with at least 6 cylinders. One way to approach this would be to filter the data using `filter` from dplyr and then visualize it. | Let us assume that we want to modify the data to be displayed: instead of want to look at only cars with at least 6 cylinders. One way to do this is to filter the data using `filter` from dplyr and then visualize it. |
| `ggplot2-legend-color-fill.qmd:239` | 3, 4 | When there are large number of levels in the mapped variable, you may not below case, we use the `breaks` argument to ensure that the labels in legend represent two levels (4, 8) of the mapped variable. | When there are a large number of levels in the mapped variable, you may not example below, we use the `breaks` argument to ensure that the labels in the legend represent two levels (4, 8) of the mapped variable. |

Refusals: The two corrected paragraphs on `limits` and `breaks` (vz1) are left verbatim. The duplicated color/fill sections keep their parallel wording. `limits` still "filters the data for visualization" in the lead-in sentences: changing that claim is content work, not style, and the paragraph after each chunk already corrects it.

## Legend: Shape Size and Alpha

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-legend-shape-size-alpha.qmd:50` | 9 | not know the underlying data, they will not be able to make any sense out of it. | not know the underlying data, they will not make any sense of it. |
| `ggplot2-legend-shape-size-alpha.qmd:59` | 9, 8 | If you have mapped shape/size to a discrete variable which has less than six | If you have mapped shape or size to a discrete variable with fewer than six |
| `ggplot2-legend-shape-size-alpha.qmd:71` | 9, 4 | supply a numeric vector of shapes. The number of shapes specified must be equal to the number of levels in the categorical variable mapped. In the below example, `cyl` has 3 levels (4, 6, 8) and hence we have specified | supply a numeric vector of shapes. The number of shapes must equal the number of levels in the categorical variable mapped. In the example below, `cyl` has 3 levels (4, 6, 8) and hence we have specified |
| `ggplot2-legend-shape-size-alpha.qmd:84` | 1 | The labels in the legend can be modified using the `labels` argument. Let us | We can modify the labels in the legend using the `labels` argument. Let us |
| `ggplot2-legend-shape-size-alpha.qmd:96` | 9, 2 | Let us assume that we want to modify the data to be displayed i.e. instead of desire to look at only cars with at least 6 cylinders. One way to approach this would be to filter the data using `filter` from dplyr and then visualize it. | Let us assume that we want to modify the data to be displayed: instead of want to look at only cars with at least 6 cylinders. One way to do this is to filter the data using `filter` from dplyr and then visualize it. |
| `ggplot2-legend-shape-size-alpha.qmd:118` | 3, 4 | When there are large number of levels in the mapped variable, you may not below case, we use the `breaks` argument to ensure that the labels in legend represent two levels (4, 8) of the mapped variable. | When there are a large number of levels in the mapped variable, you may not example below, we use the `breaks` argument to ensure that the labels in the legend represent two levels (4, 8) of the mapped variable. |
| `ggplot2-legend-shape-size-alpha.qmd:151` | 3 | We will learn to modify the following using `scale_size_continuous` when `size` aesthetic is mapped to variables: | We will learn to modify the following using `scale_size_continuous` when the `size` aesthetic is mapped to variables: |
| `ggplot2-legend-shape-size-alpha.qmd:178` | 9 | not know the underlying data, they will not be able to make any sense out of it. | not know the underlying data, they will not make any sense of it. |
| `ggplot2-legend-shape-size-alpha.qmd:189` | 1, 4, 2 | The range of the size of points can be modified using the `range` argument. We need to specify a lower and upper range using a numeric vector. In the below example, we use `range` and supply the lower and upper limits as `3` and `6`. The size of the points will now lie between `3` and `6` only. | We can modify the range of the size of points using the `range` argument. We need to specify a lower and upper range using a numeric vector. In the example below, we use `range` and supply the lower and upper limits as `3` and `6`. The size of the points now lies between `3` and `6` only. |
| `ggplot2-legend-shape-size-alpha.qmd:202` | 9, 2 | Let us assume that we want to modify the data to be displayed i.e. instead of desire to look at only cars whose horsepower is between `100` and `350`. One way to approach this would be to filter the data using `filter` from dplyr | Let us assume that we want to modify the data to be displayed: instead of want to look at only cars whose horsepower is between `100` and `350`. One way to do this is to filter the data using `filter` from dplyr |
| `ggplot2-legend-shape-size-alpha.qmd:224` | 4 | use the breaks argument and specify the labels to be used. In the below case, we use the `breaks` argument to ensure that the labels in legend represent certain midpoints (125, 200, 275) of the mapped variable. | use the breaks argument and specify the labels to be used. In the example below, we use the `breaks` argument to ensure that the labels in the legend represent certain midpoints (125, 200, 275) of the mapped variable. |
| `ggplot2-legend-shape-size-alpha.qmd:236` | 1 | The labels in the legend can be modified using the `labels` argument. Let us | We can modify the labels in the legend using the `labels` argument. Let us |
| `ggplot2-legend-shape-size-alpha.qmd:287` | 9 | not know the underlying data, they will not be able to make any sense out of it. | not know the underlying data, they will not make any sense of it. |
| `ggplot2-legend-shape-size-alpha.qmd:298` | 6, 4 | When the range of the variable mapped to size is large, you may not use the breaks argument and specify the labels to be used. In the below case, we use the `breaks` argument to ensure that the labels in legend represent certain midpoints (125, 200, 275) of the mapped variable. | When the range of the variable mapped to alpha is large, you may not use the breaks argument and specify the labels to be used. In the example below, we use the `breaks` argument to ensure that the labels in the legend represent certain midpoints (125, 200, 275) of the mapped variable. |
| `ggplot2-legend-shape-size-alpha.qmd:312` | 9, 2 | Let us assume that we want to modify the data to be displayed i.e. instead of desire to look at only cars whose horsepower is between `100` and `350`. One way to approach this would be to filter the data using `filter` from dplyr | Let us assume that we want to modify the data to be displayed: instead of want to look at only cars whose horsepower is between `100` and `350`. One way to do this is to filter the data using `filter` from dplyr |
| `ggplot2-legend-shape-size-alpha.qmd:330` | 1, 4, 2 | The range of the transparency of points can be modified using the `range` In the below example, we use `range` and supply the lower and upper limits as `0.4` and `0.8`. The transparency of the points will now lie between `0.4` and | We can modify the range of the transparency of points using the `range` In the example below, we use `range` and supply the lower and upper limits as `0.4` and `0.8`. The transparency of the points now lies between `0.4` and |
| `ggplot2-legend-shape-size-alpha.qmd:344` | 1 | The labels in the legend can be modified using the `labels` argument. Let us | We can modify the labels in the legend using the `labels` argument. Let us |

Refusals: The three corrected paragraphs on `limits`, `breaks` and alpha (vz1) are left verbatim. The alpha section's breaks paragraph read "mapped to size" — the steady-topic error is fixed to "alpha" (line 298). The "1 Hundred" labels stay: the learner review calls them noise, but removing them is content work.

## Faceting

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-facets.qmd:17` | 9 | In this chapter, we will learn about faceting i.e. splitting one plot into | In this chapter, we will learn about faceting, i.e. splitting one plot into |
| `ggplot2-facets.qmd:26` | 3, 15 | displacement and miles per gallon but let us make one additional change. We now want 3 sub plots for each type of cylinder. How can we do this? We can split or group the data by cylinder type and plot the subset of data which for comparison. ggplot2 offers the following 2 functions which allow us to plot subset of data with a simple formula based interface: | displacement and miles per gallon, but let us make one additional change. We now want 3 sub plots, one for each type of cylinder. How can we do this? We can split or group the data by cylinder type and plot the subset of data, which for comparison. ggplot2 offers the following 2 functions, which allow us to plot subsets of data with a simple formula-based interface: |
| `ggplot2-facets.qmd:37` | 3 | matrix of panels with each panel showing a different subset of data. | matrix of panels, with each panel showing a different subset of data. |
| `ggplot2-facets.qmd:45` | 4, 3 | using a formula of the form `vertical ~ horizontal`. In the below example, 3 sub plots are created, one each for the levels of the `cyl` variable and the sub plots are arranged vertically | using a formula of the form `vertical ~ horizontal`. In the example below, 3 sub plots are created, one for each level of the `cyl` variable, and the sub plots are arranged vertically. |
| `ggplot2-facets.qmd:68` | 9, 4, 3 | In certain cases, we might want different discrete variables to represent the horizontal and vertical direction. In the below example, we examine the of `cyl` and `gear` variables. | Sometimes, we might want different discrete variables to represent the horizontal and vertical direction. In the example below, we examine the of the `cyl` and `gear` variables. |
| `ggplot2-facets.qmd:90` | 3, 9 | If you carefully observe the second example, the range of `X` axis is same for all the 3 sub plots i.e. it is a fixed range. You can allow each of the sub plots to have different range using the `scales` argument and supplying it the | If you observe the second example carefully, the range of the `X` axis is the same for all the 3 sub plots, i.e. it is a fixed range. You can allow each of the sub plots to have a different range using the `scales` argument and supplying it the |
| `ggplot2-facets.qmd:101` | 3 | Now, each of the sub plot has a different range. | Now, each of the sub plots has a different range. |
| `ggplot2-facets.qmd:106` | 6, 3 | at the right for the `Y` axis. It can be changed using the `switch` argument for the `X` axis and at left for the `Y` axis. If you just want to change the axis respectively. | at the right for the `Y` axis. You can change this using the `switch` argument for the `X` axis and at the left for the `Y` axis. If you just want to change the axes respectively. |
| `ggplot2-facets.qmd:121` | 4 | columns. In the below example, we will use `facet_wrap()` to arrange the sub | columns. In the example below, we will use `facet_wrap()` to arrange the sub |
| `ggplot2-facets.qmd:133` | 4 | In the below example, we arrange the sub plots in 2 rows. | In the example below, we arrange the sub plots in 2 rows. |
| `ggplot2-facets.qmd:154` | 3 | You can allow each of the sub plots to have different range using the `scales` | You can allow each of the sub plots to have a different range using the `scales` |
| `ggplot2-facets.qmd:166` | 4 | the formula interface to specify the variables as shown below | the formula interface to specify the variables: |

Refusals: The facet formula lines, the `switch` values and the two-interface explanation around `facet_wrap(~cyl + gear)` stay. "Below we reproduce the previous example…" stays: it is his forward pointer and the whole sentence is the pointer.

## Themes

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-themes.qmd:17` | 8 | In this chapter, we will learn to modify the appearance of all non data | In this chapter, we will learn to modify the appearance of all non-data |
| `ggplot2-themes.qmd:36` | 9 | displacement and miles per gallon from the the mtcars data set. | displacement and miles per gallon from the mtcars data set. |
| `ggplot2-themes.qmd:48` | 1, 4, 2, 3 | The `axis.title.x` argument can be used to modify the appearance of the `X` axis. In the below example, we modify the color and size of the title using the `element_text()` function. Remember, whenever you are trying to modify the appearance of a theme element which is a text, you must use `element_text()`. You can use `axis.title.y` to modify the `Y` axis title and to modify the title of both the axis together, use `axis.title`. | We can use the `axis.title.x` argument to modify the appearance of the `X` axis. In the example below, we modify the color and size of the title using the `element_text()` function. Remember, whenever you want to modify the appearance of a theme element which is text, you must use `element_text()`. You can use `axis.title.y` to modify the `Y` axis title. To modify the title of both axes together, use `axis.title`. |
| `ggplot2-themes.qmd:64` | 4, 5 | function as shown below. | function. |
| `ggplot2-themes.qmd:73` | 2 | The `axis.line` argument should be used to modify the appearance of the | Use the `axis.line` argument to modify the appearance of the |
| `ggplot2-themes.qmd:93` | 1 | The background of the legend can be modified using the `legend.background` | We can modify the background of the legend using the `legend.background` |
| `ggplot2-themes.qmd:104` | 1 | The appearance of the text can be modified using the `legend.text` argument. | We can modify the appearance of the text using the `legend.text` argument. |
| `ggplot2-themes.qmd:113` | 1, 9 | The appearance of the title of the legend can be modified using the | We can modify the appearance of the legend title using the |
| `ggplot2-themes.qmd:123` | 1 | The position and direction of the legend can be changed using: | We can change the position and direction of the legend using: |

Refusals: The seven complete-theme sections are code and headings only. "You can change the color, size and font…" sentences stay: they name the arguments in words, which is a KEEP trait. The theme element names are unchanged.

## Position & Stats Tuning

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-position-stats.qmd:4` | 9 | marks: parametric position adjustments, summary statistics and modern stat mapping syntax. | marks: position adjustments, summary statistics and modern stat-mapping syntax. |

Refusals: The chapter was rewritten in the current style before this pass: the dodge, jitter, stack, `stat_summary()` and `after_stat()` paragraphs already name the function and its argument, so one change was enough. The two callouts and the code recipes are untouched.

## Scales, Formatting & Color Accessibility

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-scales-accessibility.qmd:4` | 3 | use colorblind-safe viridis palettes and check contrast for accessibility. | use colorblind-safe viridis palettes, and check contrast for accessibility. |
| `ggplot2-scales-accessibility.qmd:17` | 15, 12 | Red-green contrasts are invisible to the most common form of colorblindness. Never encode critical groups with a red-versus-green | The most common form of colorblindness makes red and green hard to tell apart. Never encode critical groups with a red-versus-green |

Refusals: The label function sections are one-line definitions with code and stay. The checklist sentence "If groups are still distinguishable by luminance, the contrast passes" stays. `scale_*_viridis_*()` and the palette advice are unchanged.

## Data Reshaping

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-reshaping.qmd:40` | 2, 9 | Plotting this directly forces one layer per series â€” repetitive and unscalable. | Plotting this directly forces one layer per series, and the recipe does not scale. |

Refusals: The wide/long definitions and the native pipe chunk stay. "`pivot_longer()` collapses the series columns…" and the `gather()` callout stay.

## Label Polishing & Wrapping

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-label-polish.qmd:67` | 2 | The same helper tidies wrapped plot titles and subtitles: | The same helper wraps plot titles and subtitles: |

Refusals: The three wrapping sections are one-line definitions with code and stay. The 90-degree callout stays.

## Finale: Publication Polish with patchwork, ggrepel & ggtext

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| — | — | — | no change |

Refusals: No change. The three before/after case studies and their callouts already read in his voice: short sentences, "Before:… After:…" as deliberate teaching contrast, no sentence that a principle improves. Reported as a zero so the coverage is honest.

## Export & Communicate

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `ggplot2-export-communicate.qmd:67` | 15, 3 | title, direct axis units and a restrained palette. | title, clear axis units and a restrained palette. |

Refusals: The storytelling checklist bullets are imperatives already ("does the title state the conclusion…"), and they stay. The `ggsave()` calls, dimensions and the Knaflic reference are untouched.


## Guard

`git diff 7fc4623..HEAD` was checked mechanically for every `.qmd`: the sequence of fenced-code delimiter lines,
the chunk-header lines, every heading line and the multiset of inline-code spans are identical before and after.
Result: **zero changed code fences, chunk headers, headings or inline-code spans** across all 22 touched prose
files. (One span was accidentally dropped and restored during the pass — `geom_line()` in Aesthetics — and one
added span was removed again in Labels; both were corrected before the chapter committed.)

`git diff 7fc4623 --stat` lists 22 touched prose files (21 chapter `.qmd` files plus `about-the-author.qmd`)
and `docs/ebk-vz2-report.md`. No code file, data file, image, `_quarto.yml`, `_freeze` entry or `docs/` output is
in the diff.

Two guard exceptions are recorded. The duplicate prose numeral `2` in `ggplot2-modify-axis.qmd:58` was deleted
with no change to a value or to numerical behaviour, so the numeral sequence is not entirely unchanged.
Separately, `git diff --check 7fc4623..a6f9631` reports 69 trailing-whitespace diagnostics on added prose lines;
that is whitespace hygiene, not a render or technical failure.

## Renders

Each chapter was rendered on its own, in a throwaway copy of `git archive HEAD` outside the repo
(`C:/Users/DELL/AppData/Local/Temp/ebk-vz2-render`), with `quarto render <file>.qmd --to html`, one chapter at a
time. All 24 chapters that were edited or sit in the book flow (including the unchanged Finale) rendered with no
error and no new warning. `--to html` is the site format; PDF and EPUB were not rebuilt per chapter in this pass
(the prose changes add no characters or constructs that are format-specific). No rendered output is committed.

## Not done, and follow-ups

- **The three legend chapters keep their reference content.** `title.hjust`, `label.vjust`, `nbin`,
  `draw.ulim`/`draw.llim` and the "1 Hundred / 2 Hundred" labels stay. The learner review recommends folding
  these into one task-based chapter; that is restructuring and example work, outside this pass.
- **`limits` read as filtering in the vz2 lead-ins:** the two `limits` sections said "we will use the
  `limits` argument and filter the data for visualization". The paragraph after each chunk (the vz1 fix) said
  what really happens, so the wording was left; rewriting the lead-in was a content decision for Aravind.
  Resolved in `ebk-vz3`: the three affected lead-ins now say that `limits` sets the legend range and that the
  data is not filtered.
- **Five technical clarifications, flagged for review:** Bar Plots said "the height of all the bars is
  proportional or same" (`ggplot2-bar-plot.qmd:106`); Box Plots called the horizontal section a "horizontal bar
  plot" (`ggplot2-box-plot.qmd:103`); the alpha `breaks` paragraph said "mapped to size"
  (`ggplot2-legend-shape-size-alpha.qmd:298`); Faceting said "3 sub plots for each type of cylinder"
  (`ggplot2-facets.qmd:27`); Scales, Formatting & Color Accessibility said red-green contrasts are "invisible"
  (`ggplot2-scales-accessibility.qmd:17`). These correct technical meaning rather than style alone and are
  recorded here under the strict meaning-preservation rule.
- **One light line restored in `ebk-vz3`:** the Box Plots invitation "You can play around with the
  transparency of the outlier…" (`ggplot2-box-plot.qmd:171` in vz2, now line 172) is back; the `ebk-vz3` audit
  found the flattening unnecessary, and the brief asks to keep light lines.
- **"learnt" → "learned"** was applied where the pass touched the sentence (Aesthetics, Histograms, Modify
  Legend, Quick Tour). Other chapters may still carry "learnt"; a book-wide sweep was not done, as the guide
  leaves the spelling to Aravind (§4.3).
- **Chapter endings** were left as they are. §3a.4 asks for the rule plus a pointer to the matching course
  lesson; adding those pointers is content work and the review's Course 3 wiring is a separate task.
- **No chapter was restructured, no example changed, no new sentence claims anything the original did not.**
