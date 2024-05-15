provider "alicloud" {
  access_key = var.alicloud_access_key
  secret_key = var.alicloud_secret_key
  region     = "cn-hangzhou"
}

resource "alicloud_instance" "my_instance" {
  instance_type = "ecs.t5-lc1m1.small"
  image_id      = "ubuntu_20_04_64_20G_alibase_20210819.vhd"
  security_groups = ["sg-12345678"]
  internet_max_bandwidth_out = 100
}
