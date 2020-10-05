function terrado
	rm -rf .terraform/modules ./terraform/terraform.tfstate ; terragrunt init; terragrunt apply
end
