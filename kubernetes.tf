provider "kubernetes" {
  config_path      = module.eks.kubeconfig_filename
}

resource "kubernetes_service_account" "helm" {
  depends_on = [module.eks]
  metadata {
    name = "helm"
    namespace = "kube-system"
  }
}

resource "kubernetes_cluster_role_binding" "helm" {
  metadata {
    name = "helm"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }
  subject {
    kind      = "ServiceAccount"
    name      = kubernetes_service_account.helm.metadata[0].name
    namespace = "kube-system"
  }
}