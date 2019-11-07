# Deploy Google Cloud Virtual Machines in a public only single region with Terraform

The script will install Apache web server on the virtual machines for testing purposes.

network-firewall.tf --> Configure basic firewall for the network

network.tf --> Define network, vpc, subnet, icmp firewall

provider.tf --> Configure Google Cloud provider

terraform.tfvars --> Defining variables 

variables-auth.tf --> Application and authentication variables

vm.tf --> Create a Ubuntu VM using Apache

# Notes

Check list of Google Cloud OS images --> https://cloud.google.com/compute/docs/images

Create the Json file for authentication --> https://cloud.google.com/iam/docs/creating-managing-service-account-keys
