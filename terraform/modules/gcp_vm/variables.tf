variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "name" {
  type = string
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "public_ip" {
  type    = bool
  default = false
}

variable "labels" {
  type    = map(string)
  default = {}
}
