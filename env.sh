#!/bin/sh
echo "Setting environment variables for Terraform"
export ARM_SUBSCRIPTION_ID="SUBSCRITION ID"
export ARM_CLIENT_ID="App ID"
export ARM_CLIENT_SECRET="PASSWORD"
export ARM_TENANT_ID="TENANT_ID"

# Not needed for public, required for usgovernment, german, china
export ARM_ENVIRONMENT=public