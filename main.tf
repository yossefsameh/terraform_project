module "mynetwork" {
  source = "./network"
  availability_zone_1=var.availability_zone_a
  availability_zone_2=var.availability_zone_b
}