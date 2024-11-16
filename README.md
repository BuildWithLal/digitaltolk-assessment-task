#### FastAPI and Terraform Assessment Task


##### Set Up Locally

1. Clone the Repository

```bash
git clone <repository-url>
```

2. Set Up Infrastructure

   Navigate to the Infrastructure directory
   ```bash
   cd infrastructure
   ```

    Initialize Terraform:
   ```bash
   terraform init
   ```

4. Preview the resources to be created
   ```bash
   terraform plan
   ```

5. Apply the configuration to create the AWS resources:
   ```bash
   terraform apply
   ```

   Type `yes` when prompted.

6. SSH into Bastion Instance
    ```bash
    ssh ubuntu@{OUTPUT_IP_FROM_TERRAFORM_APPLY}
    ```


##### Set Up the FastAPI Application

Navigate to the root directory and run
   ```bash
   docker compose up
   ```


##### Clean Up

To avoid unnecessary AWS charges and Resource consumption on local machine, clean up the resources you created:

Navigate back to the Infrastructure directory
   ```bash
   cd infrastructure
   ```

Destroy the resources:
   ```bash
   terraform destroy
   ```

   Type `yes` when prompted.


Navigate to the root directory

Press **CTRL + C** to stop the FastAPI application

Remove container and other resources
```bash
docker compose down
```

