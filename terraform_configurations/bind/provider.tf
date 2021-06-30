provider "dns" {
//  version = "3.1.0"
  update {
    server = "192.168.122.149"
    key_name = "terr-key."
    key_algorithm = "hmac-md5"
    key_secret = "aGVsbG8K"
  }
}

/*provider "vault" {
  version = "~> 2.8"
  address = "http://192.168.122.149:8200"
}*/
