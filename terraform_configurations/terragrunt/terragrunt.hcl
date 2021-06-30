/*remote_state {
  backend = "consul"
  config = {
    address = "http://erlan.pro:8500"
    scheme = "http"
    path = "${path_relative_to_include()}/0306/terraform.tfstate"
    lock = true
  }
}*/

/*
inputs = {
  aws_region = "eu-west-1"
  terraform_remote_state_file_name = "terraform.tfstate"
  vault_address = "http://erlan.pro:8200"
}*/
