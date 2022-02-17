# Find a and b
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

A + B
A - B

# 2. Using the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3

diag(c(4,1,2,3))

# 3. Generate the following matrix

m <- diag(rep.int(3, 5))
m[1,2:5] <- rep.int(1, 4)
m[2:5,1] <- rep.int(2, 4)
m
