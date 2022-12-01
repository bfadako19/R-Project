# get documentation for mtcars data frame
?mtcars

# show first 6 rows of data in mtcars
head(mtcars)

# get documentation on barplot function
# the barplot function may be used to produce bar charts
?barplot

# reformat the cylinder data in mtcars so that intead of
# it being in the data frame, it will be in the table
# 1. barplot works better with tables than it does data frames
# 2. the created table will be stored in an object

# get documentation on table function
?table

# create table and store it in an object
cylinders <- table(mtcars$cyl)

# give bar plot function cylinders object
# x-axis is telling us the different types of cylinders
# y-axis is telling us the number of data points in each type of cylinder
barplot(cylinders)

# give bar plot function the cylinders object and options
barplot(cylinders,
        col = "blue", # blue bar color
        main = "Mtcsrs Cylinder Data", # main title
        xlab = "Cylinders", # x-axis label
        ylab = "Number" # y-axis label
        )

# clear the cylinders object from the global environment
rm(list = ls())
