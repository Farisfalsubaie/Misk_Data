library(ggplot2)
library(munsell)
library(RColorBrewer)
library(Hmisc)
library(tidyverse)

#note
#“parametric model” just means we have an underlying equation
#e.g. “parametric tests” are based on an underlying assumption of …. The Central Limit Theorem
# aspect ratio( X = Y )
munsell::plot_hex("#af9999")
display.brewer.all(type = "seq")
display.brewer.pal(9, "Blues")
myblues <- brewer.pal(9, "Blues")[c(4,6,8)]


iris 
posn_j <- position_jitter(0.3)
g <- 
ggplot(iris,aes(x = Sepal.Width, y = Sepal.Length, col = factor(Species))) +
geom_point(shape = 16, alpha = 0.6, size = 3)  +  
stat_smooth(method = "lm", se = FALSE) +
theme(legend.position = c(0.1, 0.9)) +
scale_colour_manual("Iris Species", values = myblues)

scale_color_discrete() +


  ggplot(iris,aes(x = Sepal.Width, y = Sepal.Length, col = factor(Species))) +
  geom_point(shape = 16, alpha = 0.6, size = 3)  +  
  stat_smooth(method = "lm", se = FALSE) +
  theme(legend.position = c(0.1, 0.9)) +
  scale_colour_manual("Iris Species", values = myblues)

g <- 
posn_j <- 
geom_point(position = posn_j)
posn_j
# How to set the colors manually?
myCol <- brewer.pal(9, "Dark2")


# 6 - Remove non-data ink
ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width , col = factor(Species))) +
  geom_point(shape = 16, alpha = 0.6, size = 3)  +  
  stat_smooth(method = "lm", se = FALSE) +
  scale_colour_manual("Iris Species", values = myCol) +
  theme_classic()+
  theme(legend.position = c(0.1, 0.9)) 

# 7 - Relabel the axes, add a title or caption
ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width , col = factor(Species))) +
  geom_point(shape = 16, alpha = 0.6, size = 3)  +  
  stat_smooth(method = "lm", se = FALSE) +
  scale_colour_manual("Iris Species", values = myCol) +
  labs(title = "Iris Data",
        x = "Sepal Length (CM)",
        y = "Sepal Width (CM)")+
  theme_classic()+
  theme(legend.position = c(0.1, 0.9)) 

# 8 - Change the aspect ratio

ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width , col = factor(Species))) +
  geom_point(shape = 16, alpha = 0.6, size = 3)  +  
  stat_smooth(method = "lm", se = FALSE) +
  scale_colour_manual("Iris Species", values = myCol) +
  labs(title = "Iris Data",
       x = "Sepal Length (CM)",
       y = "Sepal Width (CM)")+
  theme_classic()+
  theme(legend.position = c(0.1, 0.9)) +
  theme(aspect.ratio = 1)

# 9 - Set limits on the x and y axes

ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width , col = factor(Species))) +
  geom_point(shape = 16, alpha = 0.6, size = 3)  +  
  stat_smooth(method = "lm", se = FALSE) +
  scale_colour_manual("Iris Species", values = myCol) +
  labs(title = "Iris Data",
       x = "Sepal Length (CM)",
       y = "Sepal Width (CM)")+
  coord_cortesion(xlim = c(4,8), ylim = c(2,5), expand = 0, clip = "off")+
  theme_classic()+
  theme(legend.position = c(0.1, 0.9)) +
  theme(aspect.ratio = 1)


# 10 - Extra, remove color and use facets instead

ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(shape = 16, alpha = 0.6, size = 3) +
  stat_smooth(method = "lm", se = FALSE, col = "#d7191c") +
  scale_colour_manual("Iris Species", values = myCol) +
  theme_classic()+
  theme(legend.position = c(0.1, 0.9)) +
  theme(rect = element_blank()) +
  facet_grid(. ~ Species )
  
####
#This is the data set for the next exercises:
  msleep2 <- msleep %>% 
  select(vore, sleep_total) %>% 
  na.omit()
  
  
  
ggplot(msleep2, aes(x = vore, y = sleep_total, color = vore)) +
geom_point(position = position_jitter(width = 0.2, seed = 136), 
          shape = 16, alpha = 0.65)+ 
          scale_cartesian(palette = "Dark2")+
          
  
    labs(x= )



# later
ggplot(iris, aes(Sepal.Length, Sepal.Width, col= Species)) +
  geom_point(position = posn_j, shape = 1, alpha = 0.6, size = 2) +
  scale_x_continuous("Sepal Length (cm)", limits = c(4,8), breaks = 0:8, expand = c(0,0)) +
  scale_y_continuous("Sepal Width (cm)", limits = c(2,5), breaks = 0:5, expand = c(0,0))
I have this code but it gives me a warning message
Warning message:
  Removed 1 rows containing missing values (geom_point).
