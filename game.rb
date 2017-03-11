# livecell = 1
# deadcell = 0

#Start with an array of arrays.
array = [[0,1,0,0,0], [1,0,0,1,1], [1,1,0,0,1], [0,1,0,0,0], [1,0,0,0,1]]
#Access 1st array. Then, access 1st element in that array.
array1 = array[0][1]
#Check left neighbor.
#Check top neighbor.
#Check right neighbor.
#Check bottom neighbor.
#Check diagonal neighbors.

#get diagonal array
puts (0..5).collect{ |e| array[e][e] }
