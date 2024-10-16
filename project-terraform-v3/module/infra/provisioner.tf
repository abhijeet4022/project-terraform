resource "null_resource" "local-exec" {
  depends_on = [aws_route53_record.records]
  provisioner "local-exec" {
    command = <<EOF
if [ -d /home/centos/project-ansible ]; then
  cd /home/centos/project-ansible
else
  git clone https://github.com/abhijeet4022/project-ansible.git
  cd /home/centos/project-ansible
fi
git pull
sleep 60
ansible-playbook -i ${var.name}-dev.learntechnology.cloud, main.yml -e ansible_user=centos -e ansible_user=DevOps321 -e component=${var.name}

	EOF
  }
}