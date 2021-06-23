terraform {
  /*backend "consul" {
    address = "http://192.168.122.149:8500"
    scheme = "http"
    path = "0306/dev/bind/terraform.tfstate"
  }*/

  backend "local" {
    path = "stage/terraform.tfstage"
  }

  required_providers {
    dns = {
      source = "hashicorp/dns"
      version = "3.1.0"
    }
  }
}