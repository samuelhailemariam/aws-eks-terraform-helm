variable "aws_region" {
  type = string
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "cluster_name" {
  type = string
}

variable "cluster_version" {
  description = "Version of Kubernetes control plane to deploy."
  type        = string
}


variable "vpc_cidr" {
  description = "CIDR for vpc"
  type        = string
}

variable "private_subnets" {
  description = "Private subnet CIDRs"
  type        = list(any)
}

variable "public_subnets" {
  description = "Public subnet CIDRs"
  type        = list(any)
}

variable "worker_instance_type" {
  description = "The EC2 Instance type to create for workers"

}


variable "max_workers" {
  description = "The maximum number of instances to maintain in the worker pool"
  default     = 3
}

variable "desired_capacity" {
  description = "The number of instances to launch and maintain in the cluster"
  default     = 2
}


variable "map_roles" {
  description = "List of role mapping data structures to configure the AWS IAM Authenticator."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
}