#!/bin/bash
terraform plan -destroy -out test.tfdestroy -var-file="env/test/test.tfvars" 