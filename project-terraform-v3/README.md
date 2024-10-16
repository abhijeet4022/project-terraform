* In V3 we will create the Infra and by using "local-exec" we will configure the application as well.
* Workstation and Components VM size should be t2.small or higher.
* Clone the repo in workstation and deploy the infra and application.
  - `cd /home/centos ; sudo git clone https://github.com/abhijeet4022/project-terraform.git`
  - `cd /home/centos/project-terraform/project-terraform-v3`
  - `terraform init`
  - `terraform plan`
  - `terraform apply -auto-approve`