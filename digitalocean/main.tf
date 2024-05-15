provider "digitalocean" {
  token = var.digitalocean_token
}

resource "digitalocean_droplet" "my_droplet" {
  name   = "my-droplet"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  image  = "ubuntu-20-04-x64"
}
