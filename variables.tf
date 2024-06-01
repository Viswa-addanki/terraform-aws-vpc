variable "project_name"{
  type = string
}
variable "Environment" {
  type = string
  default = "dev"
  
}
variable "common_tags" {
  type = map
  
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}

variable "vpc_tags" {
type = map
  default = {}
}

#####ig####
variable "igw_tags" {
  type = map
  default = {}
}
# #public subnet ###

variable "public_subnet_cidrs" {
  type = list
  validation {
    condition =  length(var.public_subnet_cidrs) ==2
    error_message = "Please provide 2 valid public subnets"
  }
}
variable "public_subnet_cidr_tags" {
    type = map
    default = {}
}

# #private subnet ###

variable "private_subnet_cidrs" {
  type = list
  validation {
    condition =  length(var.private_subnet_cidrs) ==2
    error_message = "Please provide 2 valid public subnets"
  }
}
variable "private_subnet_cidr_tags" {
    type = map
    default = {}
}

# #database subnet ###

variable "database_subnet_cidrs" {
  type = list
  validation {
    condition =  length(var.database_subnet_cidrs) ==2
    error_message = "Please provide 2 valid databasesubnets"
  }
}
variable "database_subnet_cidr_tags" {
    type = map
    default = {}
}
###nat gateway
variable "nat_gateway_tags" {
    type = map
    default = {}
}
##### routetables
variable "public_route_table_tags" {
    type = map
    default = {}
}
variable "private_route_table_tags" {
    type = map
    default = {}
}
variable "database_route_table_tags" {
    type = map
    default = {}
}

#### Peering ####
variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  type = map
  default = {}
}