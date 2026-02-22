library(ggplot2)
library(showtext)

font_add("NanumSquareRound", "/usr/share/fonts/truetype/nanum/NanumSquareRoundR.ttf")
showtext_auto()

t_seq <- seq(0, 1, length.out = 1000)
S0 <- 1

# 궤적 A: 직선
Sa <- S0 * (1 - t_seq)

# 궤적 B: 직선보다 위로 부푼 곡선
Sb <- S0 * (1 - t_seq^3.5)

df <- data.frame(t = t_seq, Sa = Sa, Sb = Sb)

# 적분 차이 시각화 위치
t_gap <- 0.55
y_a <- S0 * (1 - t_gap)
y_b <- S0 * (1 - t_gap^3.5)

# 리더라인 끝점 (곡선 위 정확한 위치)
t_lead_b <- 0.70
t_lead_a <- 0.68
y_lead_b <- S0 * (1 - t_lead_b^3.5)
y_lead_a <- S0 * (1 - t_lead_a)

p <- ggplot(df, aes(x = t)) +
  # A 아래 면적(삼각형)
  geom_ribbon(aes(ymin = 0, ymax = Sa), fill = "#D9D9D9", alpha = 0.80) +
  # B와 A 사이의 차이 면적
  geom_ribbon(aes(ymin = Sa, ymax = Sb), fill = "#97C8FF", alpha = 0.70) +
  # 궤적선
  geom_line(aes(y = Sa), color = "#8E8E8E", linewidth = 2.2, linetype = "33") +
  geom_line(aes(y = Sb), color = "#111111", linewidth = 3.0) +
  # 시작/끝 점
  annotate("point", x = 0, y = S0, size = 4.5, color = "#111111") +
  annotate("point", x = 1, y = 0, size = 4.5, color = "#111111") +
  # 적분 차이 화살표
  annotate(
    "segment",
    x = t_gap, xend = t_gap, y = y_a, yend = y_b,
    color = "#C51616", linewidth = 1.4,
    arrow = arrow(ends = "both", length = unit(0.18, "cm"))
  ) +
  annotate(
    "label",
    x = t_gap + 0.09, y = (y_a + y_b) / 2,
    label = "적분 차이",
    family = "NanumSquareRound", size = 5.5,
    fill = "white", color = "#C51616", fontface = "bold"
  ) +
  # 궤적 B 라벨 — 우측 바깥, 상단
  annotate(
    "label",
    x = 1.04, y = 0.82,
    label = "궤적 B (부푼 곡선)\n면적 > 삼각형",
    family = "NanumSquareRound", size = 6.5,
    fill = "white", color = "#111111", hjust = 0, fontface = "bold"
  ) +
  annotate(
    "segment",
    x = 1.02, y = 0.76, xend = t_lead_b, yend = y_lead_b,
    color = "#111111", linewidth = 0.8
  ) +
  # 궤적 A 라벨 — 우측 바깥, 하단
  annotate(
    "label",
    x = 1.04, y = 0.32,
    label = "궤적 A (직선)\n면적 = 삼각형",
    family = "NanumSquareRound", size = 6.5,
    fill = "white", color = "#666666", hjust = 0, fontface = "bold"
  ) +
  annotate(
    "segment",
    x = 1.02, y = 0.30, xend = t_lead_a, yend = y_lead_a,
    color = "#666666", linewidth = 0.8
  ) +
  scale_x_continuous(
    breaks = c(0, 1), labels = c("0", "T"),
    limits = c(-0.05, 1.12), expand = c(0, 0)
  ) +
  scale_y_continuous(
    breaks = c(0, 1), labels = c("0", "S(0)"),
    limits = c(-0.06, 1.12), expand = c(0, 0)
  ) +
  labs(x = "시간 t", y = NULL) +
  coord_cartesian(clip = "off") +
  theme_minimal(base_size = 24, base_family = "NanumSquareRound") +
  theme(
    panel.grid = element_blank(),
    axis.line = element_line(color = "#222222", linewidth = 1.1),
    axis.ticks = element_line(color = "#222222", linewidth = 1.0),
    axis.ticks.length = unit(0.23, "cm"),
    axis.text = element_text(size = 23, face = "bold", color = "#222222"),
    axis.title.x = element_text(size = 30, face = "bold", margin = margin(t = 18)),
    axis.title.y = element_blank(),
    plot.margin = margin(24, 170, 32, 56)
  )

ggsave(
  "~/AngraMyNew/img/negative_slope_trajectories.png",
  p, width = 10.0, height = 6.0, dpi = 180, bg = "white"
)
