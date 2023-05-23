variable "region" {
  description = "A2 || AWS region set"
  default     = "eu-west-1"
}

variable "vpc_cidr" {
  description = "A1 || default vpc_cidr"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "A0 | Network | map of string subnet_cidr"
  type        = map(string)

  default = {
     be1 = "10.0.0.0/24"
    be2 = "10.0.1.0/24"
    fe1 = "10.0.2.0/24"
    fe2 = "10.0.3.0/24"
  }
}

variable "enable_dns_support" {
  description = "A1 || Enable dns support for vpc"
  type        = bool
  default     = false
}
variable "enable_dns_hostnames" {
  description = "A1 || Enable enable_dns_hostnames for vpc"
  type        = bool
  default     = false
}
variable "enable_classiclink" {
  description = "A1 || Enable classiclink for vpc"
  type        = bool
  default     = false
}
variable "public_1_ip" {
  description = "A1 || bool var ip subnet1"
  type        = bool
  default     = false
}
variable "public_2_ip" {
  description = "A1 || bool var ip subnet2"
  type        = bool
  default     = false
}
variable "private_1_ip" {
  description = "A1 || bool var ip priv subnet1"
  type        = bool
  default     = false
}
variable "private_2_ip" {
  description = "A1 || bool var ip priv subnet2"
  type        = bool
  default     = false
}

variable "availability_zone_names" {
  description = "B0 || list AZ"
  type        = list(string)
  default     = ["eu-west-1"]
}

variable "docker_ports" {
  description = "C0 | Docker | docker ports"
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}
variable "name" {
  type        = string
  description = "A0 || vpc name tagging "
  default     = "VPC01"
}

variable "password" {
  type        = string
  description = "Z0 | Credentials | Password for poc "
}
