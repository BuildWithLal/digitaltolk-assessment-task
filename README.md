### FastAPI and Terraform Assessment Task


#### Set Up Locally

1. Clone the Repository

```bash
git clone https://github.com/BuildWithLal/digitaltolk-assessment-task.git
```

```bash
cd digitaltolk-assessment-task
```

<br/>

2. Set Up Infrastructure

   Navigate to the Infrastructure directory
   ```bash
   cd infrastructure
   ```

    Initialize Terraform:
   ```bash
   terraform init
   ```

<br/>

3. Update VPC and Subnet IDs in `Infrastructure/terraform.tfvars`
   ```bash
   vpc_id = "vpc-***********"
   public_subnet_id = "subnet-*********"
   ```

<br/>

4. Preview the resources to be created
   ```bash
   terraform plan
   ```

<br/>

5. Apply the configuration to create the AWS resources:
   ```bash
   terraform apply
   ```

   Type `yes` when prompted.


<br/>

6. SSH into Bastion Instance
    ```bash
    ssh ubuntu@{OUTPUT_IP_FROM_TERRAFORM_APPLY}
    ```

<br/>

#### Set Up the FastAPI Application

Navigate to the root directory and run
   ```bash
   docker compose up
   ```

Visit application at http://localhost:8000

<br/>

#### Clean Up

To avoid unnecessary AWS charges and Resource consumption on local machine, clean up the resources you created:

<br/>

Navigate back to the Infrastructure directory
   ```bash
   cd infrastructure
   ```
<br/>

Destroy the resources:
   ```bash
   terraform destroy
   ```

   Type `yes` when prompted.


<br/>

Navigate to the root directory

Press **CTRL + C** to stop the FastAPI application

<br/>

Remove container and other resources
```bash
docker compose down
```

