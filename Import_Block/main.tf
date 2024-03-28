provider "aws" {
  region = var.Region
}

import {
  id = "SECURITY-GROUP-ID"
  to = aws_security_group.HTTP-HTTPS-IMPORT
}

import {
  id = "SECURITY-GROUP-ID"
  to = aws_security_group.SSH-IMPORT
}

import {
  id = "INSTANCE-ID"
  to = aws_instance.Amazon_Linux_1_IMPORT
}

import {
  id = "INSTANCE-ID"
  to = aws_instance.Amazon_Linux_2_IMPORT
}
