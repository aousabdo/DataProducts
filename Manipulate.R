manipulate(plot(cars, xlim=c(0,x.max)),  x.max=slider(15,25))

manipulate(
        barplot(as.matrix(longley[,factor]), 
                beside = TRUE, main = factor),
        factor = picker("GNP", "Unemployed", "Employed"))

manipulate(
        boxplot(Freq ~ Class, data = Titanic, outline = outline),
        outline = checkbox(FALSE, "Show outliers"))

manipulate(
        plot(cars, xlim = c(x.min, x.max), type = type, ann = label, 
             pch = PCH, col=Color),
        label = checkbox(TRUE, "Draw Labels"), 
        x.min = slider(0, 5, step=1, initial = 0),
        x.max = slider(10, 25, step=1, initial = 25),
        type = picker("Points" = "p", "Line" = "l", "Step" = "s"),
        Color = picker("Red"= "red", "Blue" = "blue", "Cyan" = "cyan"),
        PCH = picker("Open Square" = 0, "Open Circle" = 1, "Open Triangle" = 2,
                     "Cross" = 3, "Solid Circle" = 19))
