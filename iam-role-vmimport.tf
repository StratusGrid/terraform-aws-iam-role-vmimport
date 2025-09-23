resource "aws_iam_role" "vmimport" {
  name               = var.role_name
  assume_role_policy = <<EOF
{
   "Version": "2012-10-17",
   "Statement": [
      {
         "Effect": "Allow",
         "Principal": { "Service": "vmie.amazonaws.com" },
         "Action": "sts:AssumeRole",
         "Condition": {
            "StringEquals":{
               "sts:Externalid": "vmimport"
            }
         }
      }
   ]
}
EOF


  tags = local.common_tags
}

resource "aws_iam_policy" "vmimport" {
  name        = var.role_name
  description = "Policy for ${var.role_name} role"

  policy = <<EOF
{
   "Version":"2012-10-17",
   "Statement":[
      {
         "Effect":"Allow",
         "Action":[
            "s3:GetBucketLocation",
            "s3:GetObject",
            "s3:ListBucket"
         ],
         "Resource":[
            "arn:${var.partition}:s3:::${var.image_bucket_name}",
            "arn:${var.partition}:s3:::${var.image_bucket_name}/*"
         ]
      },
      {
         "Effect":"Allow",
         "Action":[
            "ec2:ModifySnapshotAttribute",
            "ec2:CopySnapshot",
            "ec2:RegisterImage",
            "ec2:Describe*"
         ],
         "Resource":"*"
      }
   ]
}
EOF

}

resource "aws_iam_role_policy_attachment" "vmimport" {
  role       = aws_iam_role.vmimport.name
  policy_arn = aws_iam_policy.vmimport.arn
}

