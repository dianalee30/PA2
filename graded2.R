# COP2073C Programming Assignment 2 Solution
# D. Lee
# 09/13/2026
# Population matrix, percentage increase, and 2020 projection

# a. Create population vectors for 2000 and 2010


p2000 <- c(4447100, 626932, 5130632, 2673400)
p2010 <- c(4779735, 710231, 6329013, 2915921)

# Create 4x2 population matrix using cbind
pop_mat <- cbind(p2000, p2010)
pop_mat


# b. Percentage increase vector using element extraction
# Formula: (2010 - 2000) / 2000


perc_incr <- (pop_mat[,2] - pop_mat[,1]) / pop_mat[,1]
perc_incr

# Expected values:
# 0.07479818 0.13286768 0.23357376 0.09071632


# c. Estimate 2020 population using the percentage increase
# Formula: 2010 * (1 + percentage increase)


p2020 <- pop_mat[,2] * (1 + perc_incr)
p2020

# Expected values:
# 5137250.5 804597.7 7807304.4 3180442.6


# d. Create final 3-column population matrix (2000, 2010, 2020)


final_mat <- cbind(p2000, p2010, p2020)
final_mat
