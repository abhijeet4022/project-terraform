* Instead of create all VM and A record manually we will use terraform to create VM and A record.
* Create one SG named `allow-all` and allow all port from internet and use that on VM creation.
* Modify the terraform argument input value where required.
* Clone the repo in workstation and deploy the infra.
  * `sudo git clone https://github.com/abhijeet4022/project-terraform.git`
  * `cd project-terraform/project-terraform-v1 ; terraform init`
  * `terraform init`
  * `terraform plan`
  * `terraform apply -auto-approve`
* Once infra is ready hit the ansible command from workstation VM to deploy the application.
* Use the following command to run the playbook for a specific component:
    - `ansible-playbook -i <host>, -e component=<component_name> -e ansible_user=<username> -e ansible_password=<password> main.yml
   `