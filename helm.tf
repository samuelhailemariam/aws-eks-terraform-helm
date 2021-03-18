provider "helm" {
  
  kubernetes {
    config_path = module.eks.kubeconfig_filename
  }
}

resource "helm_release" "nginx" {
  name = "nginx"
  namespace = "kube-system"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  version = "8.7.1"

  set {
    name = "clusterName"
    value = module.eks.cluster_id
  }

  set {
    name = "awsRegion"
    value = data.aws_region.current.name
  }

  set {
    name = "awsVpcID"
    value = module.vpc.vpc_id
  }

}

