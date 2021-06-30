locals {
  a = {
    test_0306 = "test-0306"
  }
  ttl = "300"
}
resource "dns_a_record_set" "test_0306" {
  zone = "devopsua.tk."
  name = local.a.test_0306
  addresses = data.dns_a_record_set.google.addrs
  ttl = local.ttl

/*  lifecycle {
    ignore_changes = [
    addresses,
    ]
  }*/
  depends_on = [
    data.dns_a_record_set.google
  ]
}