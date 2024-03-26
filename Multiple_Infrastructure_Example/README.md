# Example of Multiple Infrastructures Development, Production and Staging

Use Remote-State to everything in S3 Bucket

Don't forget to use the same path in Remote-State as in Project directory

For example in S3 Bucket save the terraform.tfstate to:

source = "/Project/Project-Website/Staging/VPC/Application/App-1/terraform.tfstate"

```

Project-Example
│ 
├── Modules
│   ├── AWS_Instances
│   ├── AWS_Security_group
│   └── AWS_VPC
└── Project-Website
    ├── Development
    │   ├── Owners
    │   ├── Route53
    │   ├── S3-Bucket
    │   └── VPC
    │       ├── Application
    │       │   ├── App-1
    │       │   └── App-2
    │       ├── Cluster
    │       ├── Databases
    │       └── VPN
    ├── Production
    │   ├── Owners
    │   ├── Route53
    │   ├── S3-Bucket
    │   └── VPC
    │       ├── Application
    │       │   ├── App-1
    │       │   └── App-2
    │       ├── Cluster
    │       ├── Databases
    │       └── VPN
    └── Staging
        ├── Owners
        ├── Route53
        ├── S3-Bucket
        └── VPC
            ├── Application
            │   ├── App-1
            │   └── App-2
            ├── Cluster
            ├── Databases
            └── VPN

```