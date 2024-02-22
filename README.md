# Prerequisites

Before getting started with the Terraform configuration, ensure you have the following prerequisites in place:

1. **Terraform Installation:**
   - Install Terraform by following the [Terraform Installation Guide](https://www.terraform.io/downloads.html).

2. **AWS CLI Installation:**
   - Install the AWS CLI by following the [AWS CLI Installation Guide](https://aws.amazon.com/cli/).
   - Configure AWS CLI with your credentials using `aws configure`.

3. **SSH Key Pair:**
   - Generate an SSH key pair using the following command:
     ```bash
     ssh-keygen -t rsa -b 2048 -f adityakeypair01.pem
     ```
     This will generate `adityakeypair01.pem` (private key) and `adityakeypair01.pem.pub` (public key). The public key will be used in the `keypair.tf` configuration.

Make sure to complete these prerequisites before proceeding with the Terraform configuration.
# Terraform Configuration with Variables and Dependencies

## File Overview:

1. **ec2_instance.tf:**
   - Defines an AWS EC2 instance with user data for Apache installation.
   - Depends on an S3 bucket creation using `depends_on`.

2. **igw.tf:**
   - Creates an AWS Internet Gateway attached to the specified VPC.

3. **keypair.tf:**
   - Manages an AWS key pair for EC2 instance access.

4. **main.tf:**
   - Specifies Terraform configuration version and required providers.
   - Sets up the AWS provider with the specified region.

5. **routetable.tf:**
   - Defines a route table and associates it with a subnet, enabling internet access.

6. **s3_bucket.tf:**
   - Creates an S3 bucket and enables versioning.

7. **securitygroup.tf:**
   - Establishes an AWS security group allowing SSH, HTTP inbound, and all outbound traffic.

8. **subnet.tf:**
   - Creates an AWS subnet within the specified VPC.

9. **terraform.tfvars:**
   - Contains variable values for different configurations.
   - Assign specific values to variables without modifying the Terraform configuration files.
   - Contains key-value pairs assigning values to variables.

10. **variables.tf:**
    - Declares various Terraform variables.
    - Define and declare variables used within Terraform configurations.
    - Contains variable declarations, data types, and default values.

11. **vpc.tf:**
    - Sets up an AWS VPC with the specified CIDR block and DNS settings.

## Usage Instructions:

1. **Create a new directory:**
   ```bash
   mkdir terraform_assignment2
   cd terraform_assignment2
   ```

2. **Define Variable Values:**
   - Open `terraform.tfvars` and set appropriate values for your AWS configuration.

3. **Initialize and Apply:**
   ```bash
   terraform init
   terraform apply -var-file="terraform.tfvars"
   ```

4. **Review Outputs:**
   - After successful application, note the public IP of the EC2 instance from the Terraform output.
  
5. **Resource Dependency Explanation:**
   - The EC2 instance in `ec2_instance.tf` depends on the S3 bucket (`aws_s3_bucket.my_bucket`) using the `depends_on` attribute. This ensures the EC2 instance is created only after the S3 bucket creation.

6. **Screenshots:**
   - Screenshots of terminal/console during `terraform init`, `terraform plan`, and `terraform apply`
## Screenshots

- **Terraform Init:**

  ![Init Screenshot](https://github.com/adityajha28/Terraform_Assignment_2/blob/master/Screenshots/Screenshot%202024-02-22%20150657.png)

- **Terraform Plan:**

  ![Plan Screenshot](https://github.com/adityajha28/Terraform_Assignment_2/blob/master/Screenshots/Screenshot%202024-02-22%20150739.png)

- **Terraform Apply:**

  ![Apply Screenshot](https://github.com/adityajha28/Terraform_Assignment_2/blob/master/Screenshots/Screenshot%202024-02-22%20150838.png)
  ![apply1](https://github.com/adityajha28/Terraform_Assignment_2/assets/127980079/72e014c4-6636-41d3-8962-f0cae3438b33)
  
- **Result:**
  
  - S3
    
   ![s3](https://github.com/adityajha28/Terraform_Assignment_2/assets/127980079/b0977132-444c-451c-a005-97f218810319)
   
  - EC2
    
   ![instance](https://github.com/adityajha28/Terraform_Assignment_2/assets/127980079/fe1ecf58-e18b-4982-b8e2-5c59d41c7a56)

   ![instance1](https://github.com/adityajha28/Terraform_Assignment_2/assets/127980079/b8671214-89de-42bb-8a49-fdb072b3ca69)

  - Security group
    
   ![securitygrp](https://github.com/adityajha28/Terraform_Assignment_2/assets/127980079/7666a2be-ea62-4428-b23c-98e65dbca253)
   
   - VPC
     
   ![vpc](https://github.com/adityajha28/Terraform_Assignment_2/assets/127980079/bc386c96-f0d9-4dcf-aa70-4837fe5fab83)
   


     

## Important Note:
- Ensure AWS CLI is configured with necessary credentials before running Terraform commands.
- Review and customize the configurations according to your specific requirements.
