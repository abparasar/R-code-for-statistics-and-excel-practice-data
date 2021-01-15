x = 'today'
y = 'is'
z = 'friday'


paste0(x,y,z)

res = paste(x,y,z, sep = ' ')
res

sub(' ', '123456789', res)
gsub(' ', '123456789', res)
