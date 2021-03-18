
output "kubeconfig" {
  description = "Content of a `kubeconfig` file that can be used to connect to this cluster"
  value       = module.eks.kubeconfig
}

output "kubeconfig_filename" {
  description = "The filename of the generated kubectl config."
  value       = module.eks.kubeconfig_filename
}

output "ssh_private_key" {
  description = "Private key for SSH access to worker nodes."
  value       = tls_private_key.this.private_key_pem
  sensitive   = true
}