variable "name" {
  description = "Nom du bucket"
  type        = string
}

variable "location" {
  description = "Région du bucket"
  type        = string
}

variable "versioning" {
  description = "Activer le versioning"
  type        = bool
  default     = true
}
