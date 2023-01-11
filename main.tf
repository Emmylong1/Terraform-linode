terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.27.1"
    }
  }
}



provider "linode" {
  token = "2e5ca3e42f218316f50388c914930074d3f93f3b1861d9500ba646c4722b2aea"
}

resource "linode_instance" "ansible-master" {
  image     = "linode/ubuntu22.04"
  label     = "ansible-master"
  group     = "terraform"
  region    = "us-east"
  type      = "g6-standard-1"
  root_pass = "Emmylong1"
}


resource "linode_instance" "node1" {
  image     = "linode/ubuntu22.04"
  label     = "node1"
  group     = "terraform"
  region    = "us-east"
  type      = "g6-standard-1"
  root_pass = "Emmylong1"
}


resource "linode_instance" "node2" {
  image     = "linode/ubuntu22.04"
  label     = "node2"
  group     = "terraform"
  region    = "us-east"
  type      = "g6-standard-1"
  root_pass = "Emmylong1"
}




