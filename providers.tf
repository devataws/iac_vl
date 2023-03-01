
provider "aws" {
  profile = var.profile
  region  = var.region
}

provider "aws" {
	# checkov:skip=CKV_AWS_41: ADD REASON En estos momentos no tenemos acceso a un Vault.
  alias      = "plain_text_access_keys_provider"
  region     = "us-west-1"
  access_key = "AKIAIOSFODNN7EXAMPLE"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
}

terraform {
  backend "s3" {
    encrypt = true
  }
}
