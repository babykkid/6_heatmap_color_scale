ggplot() +
  geom_tile(
    data = module.trait.correlation %>% reshape::melt(),
    aes(x = X2, y = X1, fill = value),
    color = "white"
  ) +
  scale_fill_gradientn(
    colours=c("red3", "mistyrose", "white", "lightskyblue1", "royalblue4"),
    values=rescale(c(-1, 0-.Machine$double.eps, 0, 0+.Machine$double.eps, 1)), 
    limits = c(-1,1),
    na.value = "lightgrey",
    name = "correlation"
    ) +
  theme(
    axis.title = element_blank(),
    axis.text.x.bottom = element_text(angle = 90, hjust = 1, vjust = 0.5)
  )
