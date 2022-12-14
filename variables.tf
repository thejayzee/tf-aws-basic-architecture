variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "ami" {
  type    = string
  default = "ami-090fa75af13c156b4"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

//variable "instance_count" {
//  type    = number
//  default = 1
//}

variable "rules" {
  default = [
    { // 1st item within the complex variable type
      port  = 80
      proto = "tcp"
      cidrs = ["0.0.0.0/0"]
    },
    { // 2nd item within the complex variable type
      port  = 22
      proto = "tcp"
      cidrs = ["73.141.176.26/32"]
    }
  ]
}