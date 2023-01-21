library(ggplot2)

hex_shape <- tibble::tibble(
  x = c(2,   4,    2,   -2, -4,  -2),
  y = c(3.5, 0, -3.5, -3.5,  0, 3.5),
  group = rep(1, 6)
)

file_shape <- tibble::tibble(
  x = c(c(-1.5, 0.75,  1.5, 1.5, -1.5), rep(c(0.75,  1.5, 0.75), 2)),
  y = c(c(   2,    2, 1.25,  -2,   -2), rep(c(   2, 1.25, 1.25), 2)),
  group = c(rep(2, 5), rep(3, 3), rep(4, 3))
)

hex_small <- hex_shape |>
  dplyr::mutate(
    across(c(x, y), ~.x/2),
    x = x -1,
    y = y + 0.5
  )

# "description" "function"    "family"      "utils"       "code"   
# "minor_error" "major_error" "fatal_error" "imports"     "suggests" 
# "help"        "vignette"    "debug_minor" "debug_major" "test"      
# "collaborate"

# description ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#40ADFE", size = 2,
    fill = "#40ADFE"
  ) +
  annotate(
    geom = "text", x = 0, y = 0,
    label = "DESCRIPTION",
    hjust = 0.5, vjust = 0.5,
    size = 5.5, family = "IBM Plex Mono", colour = "#FFFFFF", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/description.svg", device = "svg", width = 600, height = 600, units = "px")

# namespace ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#40ADFE", size = 2,
    fill = "#40ADFE"
  ) +
  annotate(
    geom = "text", x = 0, y = 0,
    label = "NAMESPACE",
    hjust = 0.5, vjust = 0.5,
    size = 5.5, family = "IBM Plex Mono", colour = "#FFFFFF", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/namespace.svg", device = "svg", width = 600, height = 600, units = "px")

# license_mit ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#40ADFE", size = 2,
    fill = "#40ADFE"
  ) +
  annotate(
    geom = "text", x = 0, y = 0,
    label = "MIT\nLicense",
    hjust = 0.5, vjust = 0.5,
    size = 5.5, family = "IBM Plex Mono", colour = "#FFFFFF", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/license_mit.svg", device = "svg", width = 600, height = 600, units = "px")

# license_gpl ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#40ADFE", size = 2,
    fill = "#40ADFE"
  ) +
  annotate(
    geom = "text", x = 0, y = 0,
    label = "GPLv3\nLicense",
    hjust = 0.5, vjust = 0.5,
    size = 5.5, family = "IBM Plex Mono", colour = "#FFFFFF", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/license_gpl.svg", device = "svg", width = 600, height = 600, units = "px")

# license_cc0 ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#40ADFE", size = 2,
    fill = "#40ADFE"
  ) +
  annotate(
    geom = "text", x = 0, y = 0,
    label = "CC0\nLicense",
    hjust = 0.5, vjust = 0.5,
    size = 5.5, family = "IBM Plex Mono", colour = "#FFFFFF", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/license_cc0.svg", device = "svg", width = 600, height = 600, units = "px")


# script ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#40ADFE", size = 2,
    fill = "#40ADFE"
  ) +
  geom_polygon(
    data = file_shape, aes(x = x, y = y, group = group),
    colour = "#40ADFE", size = 1,
    fill = "#FFFFFF"
  ) +
  coord_fixed() +
  theme_void()

ggsave("imgs/script.svg", device = "svg", width = 600, height = 600, units = "px")

# code ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#8AC755", size = 2,
    fill = "#8AC75533"
  ) +
  annotate(
    geom = "text", x = -2.25, y = 0,
    label = "if (x < y) {\n  x+y\n} else {\n  x-y\n}",
    hjust = 0, vjust = 0.5,
    size = 3.5, family = "IBM Plex Mono", colour = "#0C0C0C", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/code.svg", device = "svg", width = 600, height = 600, units = "px")


# minor_error ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#FF144C", size = 2,
    fill = "#FF144C"
  ) +
  annotate(
    geom = "text", x = -0, y = 0,
    label = "!",
    hjust = 0.5, vjust = 0.5,
    size = 20, family = "IBM Plex Mono", colour = "#FFFFFF", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/minor_error.svg", device = "svg", width = 600, height = 600, units = "px")

# major_error ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#FF144C", size = 2,
    fill = "#FF144C"
  ) +
  annotate(
    geom = "text", x = -0, y = 0,
    label = "!!",
    hjust = 0.5, vjust = 0.5,
    size = 20, family = "IBM Plex Mono", colour = "#FFFFFF", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/major_error.svg", device = "svg", width = 600, height = 600, units = "px")

# fatal_error ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#FF144C", size = 2,
    fill = "#FF144C"
  ) +
  annotate(
    geom = "text", x = -0, y = 0,
    label = "!!!",
    hjust = 0.5, vjust = 0.5,
    size = 20, family = "IBM Plex Mono", colour = "#FFFFFF", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/fatal_error.svg", device = "svg", width = 600, height = 600, units = "px")

# imports ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#8AC755", size = 2,
    fill = "#8AC75533"
  ) +
  geom_polygon(
    data = hex_small, aes(x = x, y = y, group = group),
    colour = "#8AC755", size = 1,
    fill = "#8AC755"
  ) +
  annotate(
    geom = "segment", x = -1, xend = 1, y = 0.5, yend = -2.5,
    colour = "#0C0C0C", size = 2.5,
    arrow = arrow(angle = 45, length = unit(0.15, "npc"))) +
  coord_fixed() +
  theme_void()

ggsave("imgs/imports.svg", device = "svg", width = 600, height = 600, units = "px")

# suggests ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#8AC755", size = 2,
    fill = "#8AC75533"
  ) +
  geom_polygon(
    data = hex_small, aes(x = x, y = y, group = group),
    colour = "#8AC755", size = 1,
    fill = "#8AC755"
  ) +
  annotate(
    geom = "segment", x = -1, xend = 1, y = 0.5, yend = -2.5,
    colour = "#0C0C0C", size = 1.25, linetype = "11",
    arrow = arrow(angle = 45, length = unit(0.1, "npc"))) +
  coord_fixed() +
  theme_void()

ggsave("imgs/suggests.svg", device = "svg", width = 600, height = 600, units = "px")


# help ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#8AC755", size = 2,
    fill = "#8AC755"
  ) +
  annotate(
    geom = "text", x = -0, y = 0,
    label = "?",
    hjust = 0.5, vjust = 0.5,
    size = 20, family = "IBM Plex Mono", colour = "#FFFFFF", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/help.svg", device = "svg", width = 600, height = 600, units = "px")

# vignette ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#8AC755", size = 2,
    fill = "#8AC755"
  ) +
  geom_polygon(
    data = file_shape, aes(x = x, y = y, group = group),
    colour = "#8AC755", size = 1,
    fill = "#FFFFFF"
  ) +
  annotate(
    geom = "text", x = -0, y = 0,
    label = "?",
    hjust = 0.5, vjust = 0.5,
    size = 15, family = "IBM Plex Mono", colour = "#8AC755", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/vignette.svg", device = "svg", width = 600, height = 600, units = "px")


# debug_minor ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#0C0C0C", size = 2,
    fill = "#FFEC1C"
  ) +
  annotate(
    geom = "text", x = -0, y = 0,
    label = "MINOR\nFIX",
    hjust = 0.5, vjust = 0.5,
    size = 8, family = "IBM Plex Mono", colour = "#0C0C0C", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/debug_minor.svg", device = "svg", width = 600, height = 600, units = "px")

# debug_major ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#0C0C0C", size = 2,
    fill = "#FFEC1C"
  ) +
  annotate(
    geom = "text", x = -0, y = 0,
    label = "MAJOR\nFIX",
    hjust = 0.5, vjust = 0.5,
    size = 8, family = "IBM Plex Mono", colour = "#0C0C0C", fontface = "bold") +
  coord_fixed() +
  theme_void()

ggsave("imgs/debug_major.svg", device = "svg", width = 600, height = 600, units = "px")

# test ----
ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#0C0C0C", size = 2,
    fill = "#FFEC1C"
  ) +
  geom_polygon(
    data = file_shape, aes(x = x, y = y, group = group),
    colour = "#0C0C0C", size = 1,
    fill = "#FFEC1C"
  ) +
  coord_fixed() +
  theme_void()

ggsave("imgs/test.svg", device = "svg", width = 600, height = 600, units = "px")

# collaborate ----

people_lines <- tibble::tribble(
  ~group,    ~x,    ~y,
       1,  -2.5,  0,
       1,  -2.5,  -1.5,
       1, -0.25,  -1.5,
       1, -0.25,  0,
       2, -2.25,   0.25,
       2,  -0.5,   0.25,
       3,   2.5,  0,
       3,   2.5,  -1.5,
       3,  0.25,  -1.5,
       3,  0.25,  0,
       4, 2.25,    0.25,
       4,  0.5,    0.25,
       5,  -2, -1.5,
       5,  -2, -0.5,
       6,  -0.75, -1.5,
       6,  -0.75, -0.5,
       7,  2, -1.5,
       7,  2, -0.5,
       8,  0.75, -1.5,
       8,  0.75, -0.5,
)

people_curves <- tibble::tribble(
  ~group,    ~x, ~xend,    ~y, ~yend,
       1,  -2.5,  -2.25, 0,  0.25,
       2,  -0.5, -0.25, 0.25, 0,
       3,   0.25,  0.5,  0,  0.25,
       4,  2.25, 2.5, 0.25, 0
)

people_heads <- tibble::tibble(
  x = c(-1.375, 1.375),
  y = c( 1, 1)
)

ggplot() +
  geom_polygon(
    data = hex_shape, aes(x = x, y = y, group = group),
    colour = "#0C0C0C", size = 2,
    fill = "#FFEC1C"
  ) +
  geom_path(
    data = people_lines, aes(x = x, y = y, group = group),
    colour = "#0C0C0C", size = 1.25
  ) +
  geom_curve(
    data = people_curves, aes(x = x, xend = xend, y = y, yend = yend, group = group),
    colour = "#0C0C0C", size = 1.25, curvature = -0.5
  ) +
  geom_point(
    data = people_heads, aes(x = x, y = y),
    shape = 1, size = 7, stroke = 1.75
  ) +
  coord_fixed() +
  theme_void()

ggsave("imgs/collaborate.svg", device = "svg", width = 600, height = 600, units = "px")


# game logo ----

box_shapes <- tibble::tribble(
  ~group, ~x, ~y,
       1, -1.5,  4,
       1,  2.5,  4,
       1,  4.5,  0.5,
       1,  0.5,  0.5,
       2, -2.5,  4,
       2, -4.5,  0.5,
       2, -2.5, -3,
       2,  -0.5,  0.5,
       3, -1, -4,
       3,  3, -4,
       3,  5,  -0.5,
       3,  1,  -0.5
)

box_edges <- tibble::tribble(
  ~group, ~x, ~xend, ~y, ~yend,
       1, -1.5, -3.5, 4, 0.5,
       2, -3.5, -1.5, 0.5, -3,
       3, -1.5, 2.5, -3, -3,
       4, 2.5, 4.5, -3, 0.5,
       5, -1.5, 0.5, -3, 0.5
)

box_lines <- tibble::tribble(
  ~group, ~x, ~xend, ~y, ~yend,
       1, -2.5, -1.5, 4, 4,
       2, -0.5, 0.5, 0.5, 0.5,
       3, -2.5, -1.5, -3, -3,
       4, -1, -1.5, -4, -3,
       5, 1, 0.5, -0.5, 0.5,
       6, 5, 4.5, -0.5, 0.5,
       7, -4.5, -3.5, 0.5, 0.5,
       8, 3, 2.5, -4, -3
)

ggplot() +
  # geom_polygon(
  #   data = hex_big, aes(x = x, y = y, group = group),
  #   colour = NA,
  #   fill = "#EEEEEE"
  # ) +
  geom_segment(
    data = box_lines, aes(x = x, xend = xend, y = y, yend = yend, group = group),
    linetype = "12", size = 0.5
  ) +
  geom_segment(
    data = box_edges, aes(x = x, xend = xend, y = y, yend = yend, group = group),
    linetype = "42", colour = "#0F36C7", size = 1
  ) +
  # geom_polygon(
  #   data = box_shapes, aes(x = x, y = y, group = group),
  #   fill = "#FFFFFF",
  #   colour = NA, size = 1
  # ) +
  geom_polygon(
    data = box_shapes, aes(x = x, y = y, group = group, fill = as.character(group)),
    colour = "#0F36C7", size = 1, show.legend = FALSE
  ) +
  annotate(
    geom = "text", x = 0, y = -5, label = "packageR",
    size = 8, family = "Space Grotesk", colour = "#0F36C7", fontface = "bold"
  ) +
  # geom_polygon(
  #   data = hex_big, aes(x = x, y = y, group = group),
  #   colour = "#0F36C7", size = 2,
  #   fill = NA
  # ) +
  scale_fill_manual(
    values = c("1" = "#0F36C733", "2" = "#0F36C744", "3" = "#0F36C766")
  ) +
  scale_x_continuous(limits = c(-5, 5)) +
  scale_y_continuous(limits = c(-6, 4)) +
  coord_fixed() +
  theme_void()

ggsave("imgs/packageR_logo.svg", device = "svg", width = 600, height = 600, units = "px")
