california:
	terraform workspace new california || terraform workspace select california
	terraform init
	terraform apply -var-file regions/california.tfvars --auto-approve

virginia:
	terraform workspace new virginia || terraform workspace select virginia
	terraform init
	terraform apply -var-file regions/virginia.tfvars --auto-approve

apply-all: virginia california

california-detroy:
	terraform workspace new california || terraform workspace select california
	terraform init
	terraform destroy -var-file regions/california.tfvars --auto-aprove

virginia-destroy:
	terraform workspace new virginia || terraform workspace select virginia
	terraform init
	terraform destroy -var-file regions/virginia.tfvars --auto-approve

destroy-all: california-destroy virginia-destroy