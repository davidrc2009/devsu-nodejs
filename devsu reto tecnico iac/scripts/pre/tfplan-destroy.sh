#!/bin/bash
terraform plan -destroy -out pre.tfdestroy -var-file="env/pre/pre.tfvars" 