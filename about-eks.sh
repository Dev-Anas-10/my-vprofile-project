# Create or update a kubeconfig file for your cluster.
# Replace region-code with the AWS Region that your cluster is in and replace my-cluster with the name of your cluster.
aws eks update-kubeconfig --region region-code --name my-cluster