variable "AWS_ACCESS_KEY" {
  default = "ASIASYYEA7DMNDEJWFXB"
}
variable "AWS_SECRET_KEY" {
  default = "4k56V3D3c3zm0JNHx009IhuM7DnpUQP15nVHQvWV"
}
variable "AWS_TOKEN" {
  default = "FwoGZXIvYXdzEAcaDJD7S6+4r8PqU/3rwyK6AcB+8ydr8tbI9pYzklPVRm7GFY6igibrNI2DKZ8dWJ+o9WaVqB5HjmPitjPABRg+F+E46vmLrjfxcoMAAItIZSQZTsv/UjBMdKfh80HoVwYYb088i7eKwIyzipEULTyC7+tVAqKad+wlwrroOeSDtd72QgSG9Fhgz6xgsYs82j09lBpCiJGcMvkheoiuSMqtDZpNBjo3n2hoGWyVvA9zjfpZsRYcAde4bn2bVtY8uU7Jjp/GocIRIfWreyioiY6NBjItTHj1bvfw90sQ9+6Sg3cXnEQBHagWRxfxTVduDAicE/c4vOv23MB/4laYHPCa"
}
variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {

  type = map(string)
  default = {
    us-east-1 = "ami-083654bd07b5da81d"
    us-west-1 = "ami-"
    es-east-1 = "ami-"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "/root/.ssh/mykey.pem"
}

variable "INSTANCE_USERNAME_UBUNTU" {
  default = "ubuntu"
}

variable "INSTANCE_USERNAME_AMZAMI2" {
  default = "ec2-user"
}
