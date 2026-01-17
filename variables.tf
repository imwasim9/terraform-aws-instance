variable "ami_id"{
    type = string
    description = "This is the ami used for creating ec2_instance"
}

variable "instance_type"{
    type = string
    validation {
      condition = contains(["t3.micro","t3.small","t3.medium"],var.instance_type)
      error_message = "provide only any of the t3.medium, t3.micro or t3.small instance_type"
    }
    description = "This is the type of ec2_instance to be provided for creating ec2"
}

variable "sg_ids"{
    type = list
    description = "This is the security groups to be added for creating ec2"
}

variable "tags" {
    type = map 
    description = "This are the tags used to identify the ec2_instance"
    default = {}  
}