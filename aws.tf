provider "aws" {
  region = "ap-southeast-1"
}





#====ROUTE-TABLE====




#create InternetGW


#create NatGW


#Associate PublicRT to InternetGW
#Associate PrivateRT to NatGW
#Create Web-wp-public-sg - allow http, https, ssh from anywhere

#Create Web-Private-SG - allow http, https, ssh from web-wp-public-sg/0.0.0.0
#Create Loadbalance-SG - allow http, https from anywhere
#Create wp-efs-sg - allow NFS from web-wp-public-sg, web-private-sg
#Create RDS-SG - allow MYSQL/Aurora from web-wp-public-sg, web-private-sg
#Create Redis-SG - allow port 6379 from web-wp-public-sg, web-private-sg