* Instead of creating all VMs and A record manually, we will use terraform to create VM and A record.
* Here in V2 we will use loop concept to iterate the infra creation.
* Create one SG named `allow-all` and allow all ports from internet and use that on VM creation.
* Modify the terraform argument input value where required in vars.tf file.
* Clone the repo in workstation and deploy the infra.
  * `cd /home/centos ; sudo git clone https://github.com/abhijeet4022/project-terraform.git`
  * `cd /home/centos/project-terraform/project-terraform-v2`
  * `terraform init`
  * `terraform plan`
  * `terraform apply -auto-approve`
* Once infra is ready, hit the ansible command from workstation VM to deploy the application.
* Use the following command to run the playbook for a specific component:
    - `ansible-playbook -i <host>, -e component=<component_name> -e ansible_user=<username> -e ansible_password=<password> main.yml
   `
Note : For ansible need to clone the ansible repo.