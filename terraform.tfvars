aws_region      = "us-west-2"
cluster_name    = "ekscluster"
cluster_version = "1.18"
vpc_cidr        = "10.40.0.0/17"
private_subnets = [
  "10.40.64.0/20",
  "10.40.80.0/20",
  "10.40.96.0/20",
]
public_subnets = [
  "10.40.0.0/20",
  "10.40.16.0/20",
  "10.40.32.0/20",
]
worker_instance_type = "t3.medium"
map_roles = [
  {
    rolearn  = "arn:aws:iam::000000000000:role/KubernetesAdmin"
    username = "kubernetes-admin"
    groups   = ["system:masters"]
  },
]

