variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "pupsub1_cidr" {
  type    = string
  default = "10.0.0.0/24"
}

variable "pupsub2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}


variable "prisub1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}


variable "prisub2_cidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "availability_zone_1" {
  type    = string
  default = "us-east-1a"
}

variable "availability_zone_2" {
  type    = string
  default = "us-east-1b"
}