#!/bin/bash
terraform init -backend-config env/pre/backend.conf -reconfigure -upgrade && terraform plan -out pre.tfplan -var-file="env/pre/pre.tfvars"