install.packages("ggplot2")

library(ggplot2)

heroes <- read.csv("https://raw.githubusercontent.com/Pozdniakov/tidy_stats/master/data/heroes_information.csv")
View(heroes)

ggplot(aes(y=Hair.color), data=heroes) +
  geom_bar(alpha=0.35, color="#FF7256", fill="#FF7256") +
  geom_hline(yintercept=0, linetype="dotted") +
  xlab("Количество героев с таким цветом волос") +
  ylab("Цвет волос героев") +
  labs (title="Цвет волос героев") +
  theme_grey() +
  theme(axis.text = element_text(size = 6, angle=0)) 

ggplot(aes(x=Weight, y=X), data=heroes) +
  geom_point(alpha=0.55, color="#79CDCD") +
  geom_hline(yintercept=0, linetype="dotted") +
  xlab("Вес героев") +
  ylab("Номер героя в таблице") +
  labs (title="Вес героев") +
  theme_dark() +
  theme(axis.text = element_text(size = 6, angle=0))                     
                     
                     