### FastAPI and Terraform Assessment Task


#### Set Up Locally

1. Clone the Repository

```bash
git clone https://github.com/BuildWithLal/digitaltolk-assessment-task.git

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

<b/r>
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


<br/>

#### Clean Up

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


<br/>
Navigate to the root directory

Press **CTRL + C** to stop the FastAPI application

<br/>
Remove container and other resources
```bash
docker compose down
```

