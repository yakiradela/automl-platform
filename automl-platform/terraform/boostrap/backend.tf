terraform {
  backend "s3" {
    bucket = "terraform-state-bucketxyz123"  # שים כאן את שם הבאקט לאחסון ה-state
    key    = "state/terraform.tfstate"      # נתיב בתוך הבאקט (אפשר פשוט terraform.tfstate)
    region = "us-east-2"                     # אזור הבאקט
  }
}
