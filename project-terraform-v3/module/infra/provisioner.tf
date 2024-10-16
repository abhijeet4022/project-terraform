resource "null_resource" "local-exec" {
  depends_on = [aws_route53_record.records]
  provisioner "local-exec" {
    command = <<EOF

cd /home/centos/project-terraform/project-terraform-v3
git pull
sleep 60
ansible-playbook -i ${var.name}-dev.learntechnology.cloud, main.yml -e ansible_user=centos -e ansible_user=DevOps321 -e component=${var.name}

	EOF
  }
}