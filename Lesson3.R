library(datasets)
with(faithful, plot(eruptions, waiting))
title(main="Something Something")

pdf(file="myplot.pdf")
with(faithful, plot(eruptions, waiting))
title(main="Something Something")
dev.off()

dev.copy(png, file="geyserplot.png")
dev.off()