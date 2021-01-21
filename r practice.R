x = 'today'
y = 'is'
z = 'friday'

#concatenate
paste0(x,y,z)

res = paste(x,y,z, sep = '')
res

#substitute
sub(' ', '123456789', res)
gsub(' ', '123456789', res)

#text extraction

substr(res, 1,6)


# logical operators
a = 10
x = 10
y = 20
z = 30

x > y
x < y

x == y

x == a

x > y & x < z
x > y | x < z



#derived data types
#numeric, character, boolean

#1. vector, 2. matrix, 3. Data frame, 4. List

# vector (A collections of scalars of the same data type)

x = c(1,2,3,4,5,6,7,8,9)
x
y= c("a", 'b', 'c', 'd', 'e', 'f')
y

#type of data inside the vector
class(y)

is.vector(x)

x = c(1,2,3,4,5,6,7,8,9)
#[] means we are looking for index/location

x[3]
y[3]

# : means range

y= c("a", 'b', 'c', 'd', 'e', 'f', 'g','h')
y

y[2:4]

y[ c(1:3, 5:7,8) ]

# - means delete
y[-3]

y[-1:-3]


new = 1:100
new

x = seq(1,100, by= 10)

x

x= seq(1,5, length=11)

x


# logical index

x = c(1,2,3,4,5,6,7,8,9)

x

x[x>3]

#match

x = c('a', '$', 'e', 'i', '#', 'o', 'u')
x
y = letters
y

match(x,y)

x%in%y

#concatenate

x = letters
x
y = 1:26
y

z = paste(x,y, sep="#")
z

paste(z, collapse = '+')


x = letters
x

paste(x, collapse = '')


# extract odd number from a vector 2:99

11/2
11%%2

17%%2 != 0

x = 2:99
x


which(x%%2 != 0)

x[which(x%%2 != 0)]


#sample

class = 1:100
class



set.seed(9)
sample(class, 5)

#matrix 2d vector

x = matrix(c(1:16),4,4)
x
y = c(1:16)
y

# list Vectors are called atomic data type because they can not contain higher data types themselves

x = 1:20
y = letters
z = 1.6666


list = list(col1=x,col2=y,col3=z)

list

list[[2]][9]


list[[1]][15]

list$col2[5]

# Data Frames Special kind of list with vectors of same length 


x = 1:26
y = letters

df = data.frame(x,y)
df

View(df)
names(df) = c('colx','coly')
names(df)

rownames(df) = paste0('R',1:26)

rownames(df)

dim(df)

nrow(df)
ncol(df)

str(df)

df$coly = as.character(df$coly)


str(df)

#get the data from .csv file
#current working folder
getwd()

setwd('C://Users//HP//Desktop//edu//2_R-20200322T142441Z-001//R//Input Files')

filedata = read.csv('CCData1.csv', stringsAsFactors = F)
filedata

head(filedata)


# apply family


x = matrix(c(1:16),4,4)
x
#1= row, 2= colum
apply(x, 2,sum)

#lapply

A = matrix(1:9,3,3)
B = matrix(4:15, 4,3)
C = matrix(8:10, 3,2)

mylist = list(A,B,C)
mylist

lapply(mylist, '[', 1,2)

#sapply (same as lapply only the output looks better)


sapply(mylist, '[', 1,2)



library(dplyr) #select filter arrange mutate



msleep = read.csv('mammals.csv', stringsAsFactors = F)

View(msleep)
str(msleep)
glimpse(msleep)

#select some columns

head(select(msleep, name, sleep_total))

head(select(msleep, -name))

head(select(msleep, name:order))

head(select(msleep, starts_with('sl')))


#filter

filter(msleep, sleep_total >= 16, bodywt >= 1)




filter(msleep,order%in%c('Carnivora', 'Pilosa'))


#arrange

arrange(msleep, desc(order))
#mutate

mutate(msleep, new_col= sleep_total - sleep_rem)


#pipe in dplyr

head(select(msleep, name, sleep_total))


msleep %>% select(name,sleep_total) %>% head

msleep %>% arrange(order) %>% head

table(msleep$vore)



library(lubridate)



ymd('20170804')


mdy('08-04-2017')

dmy('04/08/2017')


timeval = ymd_hms('2017-08-04 12:00:25', tz= 'Pacific/Auckland')
timeval

wday(timeval)

wday(timeval, label = TRUE)



leap_year(2016)



ymd('20170804') + years(1)

ymd('20170804') + dyears(1)


parse_date_time('31-16-Oct 02:05 PM','%d-%y-%b %I:%M %p')

#stats


getwd()

cc = read.csv('Credit_Card_Data.csv')

#vvip 4 functions 
names(cc)
View(cc)
str(cc)
summary(cc)


mean(cc$Number.of.Credit.Cards)
median(cc$Number.of.Credit.Cards)

mode(cc$Number.of.Credit.Cards)


library(modeest)

mlv(cc$Marital.Status.of.the.Customer)





customsum = function(x,y) {
  x + y
}


customsum(10,2)

custommode = function(x){
  ux = unique(x)
  ux
  ux[which.max(tabulate(match(x,ux)))]
}


custommode(cc$Marital.Status.of.the.Customer)
