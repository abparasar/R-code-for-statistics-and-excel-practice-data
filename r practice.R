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


list = list(x,y,z)
list
list[[2]][9]
