locals {
  
Resource_Name = "${var.project_name}-${var.Environment}"
az_names = slice(data.aws_availability_zones.available.names,0,2)
}