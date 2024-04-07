resource "aws_s3_bucket" "narsiterraform" {
  bucket = "narsiterraform" // Specify a unique name for your bucket

  # Enable versioning for the bucket (optional)
  versioning {
    enabled = true
  }

  # Enable server-side encryption for the bucket (optional)
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_statelock" {
  name           = "terraform_lock-state"
  billing_mode   = "PROVISIONED" // Set the billing mode to PROVISIONED for state locking
  read_capacity  = 20
  write_capacity = 10
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S" // Specify the data type of the hash key attribute (S for string)
  }
}
