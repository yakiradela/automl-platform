terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket"  # שים כאן את שם הבאקט לאחסון ה-state
    key    = "state/terraform.tfstate"      # נתיב בתוך הבאקט (אפשר פשוט terraform.tfstate)
    region = "us-east-2"                     # אזור הבאקט
  }
}
