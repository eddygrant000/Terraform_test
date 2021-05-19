#!/bin/bash

whoami
curl -O https://releases.hashicorp.com/terraform/0.14.10/terraform_0.14.10_linux_amd64.zip
apt install terraform -y
unzip terraform_0.14.10_linux_amd64.zip  -d /usr/bin/
terraform  -v

