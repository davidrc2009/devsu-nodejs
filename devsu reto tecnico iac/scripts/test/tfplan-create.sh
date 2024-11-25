#!/bin/bash
terraform init -backend-config env/test/backend.conf -reconfigure -upgrade && terraform plan -out test.tfplan -var-file="env/test/test.tfvars"