# project-terraform
Repository for Terraform configurations and modules used to provision and manage cloud infrastructure resources for the project.

# Pre-Requisites
1. Create a security group named `allow-ssh` to allow SSH access from the internet.
2. Create an IAM role with admin privileges named `admin-role`.
3. Launch a new EC2 instance as your workstation and attach both the `admin-role` IAM role and the `allow-ssh` security group to the instance.
4. Install Ansible and Terraform on the workstation:
    * `sudo yum install ansible git -y`
    * `sudo git clone https://github.com/abhijeet4022/project-terraform.git`
    * `cd project-terraform ; sudo bash install.sh`