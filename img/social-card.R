# Social share card for "Data Visualization with ggplot2".
# Renders img/social-card.png at exactly 1200 x 630 px for Open Graph and
# Twitter "summary_large_image" cards. Run from the project root:
#   Rscript img/social-card.R
# Requires: ggplot2, ragg, systemfonts.

library(ggplot2)
library(ragg)
library(systemfonts)

W <- 1200
H <- 630
DPI <- 100

INK      <- "#0f172a"
MUTED    <- "#475569"
BLUE     <- "#2563eb"
HAIRLINE <- "#e2e8f0"
BG       <- "#ffffff"

titles   <- c("Data Visualization", "with ggplot2")
subtitle <- "Recipes for scatter, line, bar, box, facets and themes"
site     <- "rsquaredacademy.com"

family <- if ("Segoe UI" %in% system_fonts()$family) "Segoe UI" else "sans"

# ggplot2 sizes text in mm while the card is laid out in pixels:
# 1 mm = 2.845276 pt and 1 pt = DPI / 72 px on the ragg device.
px_to_mm <- function(px) px * 72 / DPI / 2.845276

# Width in px of `txt` drawn at `pt` points on this device.
text_width <- function(txt, pt, bold = FALSE) {
  string_width(
    txt,
    family = family,
    weight = if (bold) "bold" else "normal",
    size = pt,
    res = DPI
  )
}

left <- 96
right_edge <- W - 96
max_text_width <- right_edge - left

# Title: shrink only if the longest line would overflow the safe area.
w_at_100 <- max(text_width(titles, 100, bold = TRUE))
title_pt <- min(104 * 72 / DPI, 100 * max_text_width / w_at_100)
title_px <- title_pt * DPI / 72
cap_px <- title_px * 0.74  # measured cap height of the chosen face

subtitle_px <- 32
site_px <- 26

# Vertical rhythm, measured from the bottom of the canvas.  Text geoms are
# drawn with vjust = 1, which anchors the top of the glyphs at y.
accent_y   <- 524                        # brand bar above the title block
title_y1   <- 498                        # first title line
title_y2   <- title_y1 - title_px * 1.16 # second title line
subtitle_y <- title_y2 - cap_px - 50     # one-line subtitle

rule_y  <- 168                           # footer hairline
site_y  <- 96                            # URL, bottom left

# Fail loudly rather than ship clipped text.
stopifnot(
  max(text_width(titles, title_pt, bold = TRUE)) <= max_text_width,
  text_width(subtitle, subtitle_px * 72 / DPI) <= max_text_width,
  text_width(site, site_px * 72 / DPI) <= max_text_width,
  accent_y + 10 <= H - 40,
  subtitle_y - subtitle_px >= rule_y + 40,
  site_y - site_px >= 40
)

# Small bar-chart motif in the footer, right aligned.
bar_w <- 26
bar_gap <- 12
bar_heights <- c(26, 44, 34, 56)
bars <- data.frame(
  xmin = right_edge - (length(bar_heights) * bar_w +
    (length(bar_heights) - 1) * bar_gap) + (seq_along(bar_heights) - 1) *
    (bar_w + bar_gap),
  height = bar_heights,
  fill = c("#bfdbfe", "#93c5fd", "#60a5fa", BLUE)
)
bars$xmax <- bars$xmin + bar_w
bars$ymin <- 92
bars$ymax <- bars$ymin + bars$height

p <- ggplot() +
  coord_cartesian(xlim = c(0, W), ylim = c(0, H), expand = FALSE) +
  # brand accent above the title
  annotate(
    "rect",
    xmin = left, xmax = left + 120, ymin = accent_y, ymax = accent_y + 10,
    fill = BLUE, colour = NA
  ) +
  # footer hairline
  annotate(
    "rect",
    xmin = left, xmax = right_edge, ymin = rule_y, ymax = rule_y + 2,
    fill = HAIRLINE, colour = NA
  ) +
  # bar-chart motif, bottom right
  annotate(
    "rect",
    xmin = bars$xmin, xmax = bars$xmax, ymin = bars$ymin, ymax = bars$ymax,
    fill = bars$fill, colour = NA
  ) +
  annotate(
    "text",
    x = left, y = c(title_y1, title_y2),
    label = titles,
    hjust = 0, vjust = 1,
    family = family, fontface = "bold",
    size = px_to_mm(title_px), colour = INK
  ) +
  annotate(
    "text",
    x = left, y = subtitle_y,
    label = subtitle,
    hjust = 0, vjust = 1,
    family = family,
    size = px_to_mm(subtitle_px), colour = MUTED
  ) +
  annotate(
    "text",
    x = left, y = site_y,
    label = site,
    hjust = 0, vjust = 1,
    family = family,
    size = px_to_mm(site_px), colour = MUTED
  ) +
  theme_void() +
  theme(
    plot.background = element_rect(fill = BG, colour = NA),
    panel.background = element_rect(fill = BG, colour = NA),
    plot.margin = margin(0, 0, 0, 0)
  )

out <- "img/social-card.png"
ggsave(
  out,
  plot = p,
  device = ragg::agg_png,
  width = W / DPI,
  height = H / DPI,
  units = "in",
  dpi = DPI,
  bg = BG
)

dims <- dim(png::readPNG(out))
stopifnot(dims[2] == W, dims[1] == H)
message(
  "wrote ", out, " (", dims[2], "x", dims[1], " px); title ",
  round(title_px), " px, family ", family
)
