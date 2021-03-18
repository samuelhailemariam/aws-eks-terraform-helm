# Provision AWS EKS Cluster with Terraform and Helm

This module will create an EKS cluster in the AWS account managed by the current credential.

## Notes

- Make sure you have `aws-iam-authenticator` binary is installed.

## Configure kubectl

- Retrieve the cluster kubeconfig file

  `terraform output kubeconfig > kubeconfig_{{cluster_name}}`

- Ensure that the cluster worker nodes are up and in the ready state

  `$ kubectl --kubeconfig kubeconfig_{{cluster-name}} get nodes`
