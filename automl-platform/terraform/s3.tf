terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket"    # שים כאן את שם הבאקט שיצרת לאחסון ה-state
    key    = "path/to/terraform.tfstate"     # הנתיב בתוך הבאקט (אפשר פשוט "terraform.tfstate")
    region = "us-east-2"                      # האזור של הבאקט
  }
}

