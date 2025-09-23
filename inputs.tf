variable "image_bucket_name" {
  description = "Bucket where VM Images are stored"
  type        = string
}

variable "role_name" {
  description = "Name of vmimport Role"
  type        = string
  default     = "vmimport"
}

variable "input_tags" {
  description = "Map of tags to apply to resources"
  type        = map(string)
  default     = {}
}


variable "partition" {
  description = "AWS partition (cf. https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)"
  type        = string
  default     = "aws"
}
