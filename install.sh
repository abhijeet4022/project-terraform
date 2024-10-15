echo -e "\e[1;36mTerraform Installation.\e[0m"

echo -e "\e[31mSetup The Terraform Repository.\e[0m"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

echo -e "\e[31mInstall Terraform.\e[0m"
sudo yum -y install terraform