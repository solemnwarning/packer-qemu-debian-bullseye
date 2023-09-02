#!/bin/bash

set -e

timestamp=$(date --utc '+%Y-%m-%dT%H:%M:%SZ')

packer init  -var "output_dir=output/${timestamp}" packer-qemu-debian-bullseye.pkr.hcl
packer build -var "output_dir=output/${timestamp}" packer-qemu-debian-bullseye.pkr.hcl
ln -sfv "${timestamp}" "output/latest"
