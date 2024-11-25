Aplicación de Devsu en NodeJs alojada en https://devsu.sisash.net.pe/  usando AKS

Terraform:
Init:
terraform init -backend-config "env/<env>/backend.conf"

Plan:
terraform plan -out test.tfplan -var-file="env/<env>/<env>.tfvars"

Destroy:
terraform plan -destroy -out test.tfdestroy -var-file="env/<env>/<env>.tfvars"