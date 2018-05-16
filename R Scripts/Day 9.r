### few tips


assign('x',123) ### dynamic allocation of variables

D(expression(X^3),"X")

library(swirl)

swirl()

library(ggplot2)

?mpg

## how are engine and fuel economy related

##do certain manufacturers care more about economy than others

## Has fuel economy increased in last 10 years


## (data + aesthetic mapping) + geom layers 

e <- ggplot(mpg,aes(x=displ,y=hwy))

e + geom_point()

ggplot(mpg,aes(x=displ,y=hwy,col='Blue'))+geom_point()

edit(mpg)



### colour attribute 

ggplot(mpg,aes(displ,hwy,colour=class)) +
  geom_point()


### Facetting 

ggplot(mpg,aes(displ,hwy,colour=class)) +
  geom_point() +
  facet_wrap(~class) +
  geom_smooth()


### smoothing

ggplot(mpg,aes(displ,hwy)) +
  geom_point() +
  geom_smooth()


## histograms

ggplot(mpg,aes(cty)) + 
  geom_histogram()


ggplot(mpg,aes(hwy)) + 
  geom_freqpoly()


### Bar chart

ggplot(mpg,aes(manufacturer)) + 
  geom_histogram()

ggplot(mpg,aes(manufacturer)) + 
  geom_bar()

## line - time series

ggplot(economics,aes(date,uempmed)) +
   geom_line()
  

## Labels

ggplot(mpg,aes(x=cty,y=hwy)) + 
  geom_point()  +
  xlab('City') +
  ylab('Highway')   


### categorical

ggplot(mpg,aes(displ,hwy,colour=cyl)) + geom_point()

ggplot(mpg,aes(displ,hwy,colour=factor(cyl))) + geom_point()

p <- ggplot(mpg,aes(displ,hwy,colour=factor(cyl))) + geom_point()
 
install.packages('plotly')

ggplotly(p)



########### REFERENCE FOR GGPLOT 

#1 scatter plot

options(scipen=999)  # turn-off scientific notation like 1e+48
theme_set(theme_bw())  # pre-set the bw theme.
data("midwest", package = "ggplot2")

# Scatterplot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  geom_smooth(method="loess", se=F) + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="Scatterplot", 
       caption = "Source: midwest")

plot(gg)


### animate 

library(ggplot2)
library(gganimate)
library(gapminder)
theme_set(theme_bw())  # pre-set the bw theme.

g <- ggplot(gapminder, aes(gdpPercap, lifeExp, size = pop, frame = year)) +
  geom_point() +
  geom_smooth(aes(group = year), 
              method = "lm", 
              show.legend = FALSE) +
  facet_wrap(~continent, scales = "free") +
  scale_x_log10()  # convert to log scale

gganimate(g, interval=0.2)


### Diverging Dot Plot

library(ggplot2)
theme_set(theme_bw())

# Plot
ggplot(mtcars, aes(x=`car name`, y=mpg_z, label=mpg_z)) + 
  geom_point(stat='identity', aes(col=mpg_type), size=6)  +
  scale_color_manual(name="Mileage", 
                     labels = c("Above Average", "Below Average"), 
                     values = c("above"="#00ba38", "below"="#f8766d")) + 
  geom_text(color="white", size=2) +
  labs(title="Diverging Dot Plot", 
       subtitle="Normalized mileage from 'mtcars': Dotplot") + 
  ylim(-2.5, 2.5) +
  coord_flip()


### Histogram on a categorical variable

library(ggplot2)
theme_set(theme_classic())

# Histogram on a Categorical variable
g <- ggplot(mpg, aes(manufacturer))
g + geom_bar(aes(fill=class), width = 0.5) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
  labs(title="Histogram on Categorical Variable", 
       subtitle="Manufacturer across Vehicle Classes") 


