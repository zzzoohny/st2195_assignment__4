##radius
#r<-2
#r<-2 removed because the function must be defined first
#before the variable is assigned

##Function to compute the volume of a sphere with radius r
#volume<-function(r,rho){           #The second argument rho is not used here
#  3/4*pi*r^2                       #Formula used for computing volume of a sphere 
#}                                  #should be 4/3*pi*r^3

# pi <- 3.14149       #in case pi value is assigned with different values in computer

#corrected volume function
volume <- function(r){
  4/3*pi*r^3
}

# #Function to compute the volumes of the spheres with radius r,r^2,r^3
# volumn_vector<-function(r){
#   r<-22                       #r is redefined before it is used. r will be 22 no matter what
#   for (r in 2:4){             # error1. it should be 1:3, not 2:4
#     volumne(r)                # error2. it should be volume(r^pw) instead of volume(r)
#   }                           # error3. it should be power(pw) that takes different values. 
# }                             # results not stored in the vector

volume_vector<-function(r){
  volumes=c()                    #create a combining vector to store the volumes
  for (pw in 1:3):              #power of 1,2,3
    vol<-volume(r^pw)           #call the function: volume(r^pw)
    print(vol)                  #print the returned volume value
    volumes=c(volumes,vol)      #add calculated volume to the vector
}
volumes                         #return the vector

#Run volume_vector(r) and print the volumes of the spheres with 
# radius r, r^2 and r^3
r<-2
volume_vector(r)                #it will be vector 2, as r is assigned to be 2
volume_vector(3)
volume(4)                       #testing the volume() function


