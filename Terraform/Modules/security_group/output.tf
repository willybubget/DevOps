variable "name" {
  description = "Name of the security group"
  type        = string
}
variable "description" {
  description = "Description of the security group"
  type        = string
}
variable "vpc_id" {
  description = "VPC ID to create the security group in"
  type        = string
}
//variable "allowed_cidr_blocks" {
  //description = "List of CIDR blocks to allow"
  //type        = list(string)
//}
variable "ingress_rules" {
  description = "List of ingress rules"
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}
