### Name : Jimish Gajjar 
### Student Id: 041174142 
### Email: gajj0008@algonquinlive.com 

# Hybrid-A09: Terraform CI/CD with Husky and GitHub Actions

## Introduction
This repository contains a DevOps pipeline for managing infrastructure as code (IaC) using Terraform and automating the deployment process with GitHub Actions. The project involves creating a Terraform script to provision resources on Azure and using GitHub Actions for continuous integration (CI) and continuous deployment (CD). The pipeline also integrates Husky to ensure code quality and prevent issues like incorrect formatting or syntax errors.

## Objective
The primary objective of this project is to:
- Use Terraform to create an Azure resource (e.g., a virtual machine, storage account).
- Set up a CI/CD pipeline using GitHub Actions to automate the Terraform deployment.
- Implement Husky pre-commit hooks to enforce code formatting and validation before commits.
- Ensure that Terraform code is correctly formatted and free of syntax errors before merging into the main branch.

## Technologies Used
- **Terraform**: An open-source tool to define infrastructure as code. It is used to automate the provisioning of resources on Azure.
- **GitHub Actions**: A CI/CD tool used to automate workflows, validate Terraform code, and deploy infrastructure.
- **Husky**: A tool used to create Git hooks that enforce pre-commit checks (e.g., `terraform fmt`, `terraform validate`, `tflint`).
- **Azure**: The cloud platform where resources like virtual machines or storage accounts are provisioned.

## Prerequisites
Before you can run the pipeline or contribute to the repository, ensure the following:
1. **Terraform** is installed on your local machine.
2. **Node.js and npm** are installed to manage Husky hooks.
3. **Git** is installed for version control.
4. A **GitHub repository** to host your code and manage the CI/CD pipeline.

## Setup

### Step 1: Clone the Repository
First, clone the repository to your local machine and navigate into the repository folder.

### Step 2: Initialize the Node.js Project
To set up Husky, run the necessary commands to initialize the Node.js project and install Husky.

### Step 3: Configure Husky Hooks
To set up Husky pre-commit hooks for formatting and validation, create a pre-commit hook that includes the following commands:
1. `terraform fmt -check -recursive`
2. `terraform validate`
3. `tflint`

### Step 4: Configure the Terraform Script
In the `infrastructure` folder, create a simple Terraform script to provision an Azure resource (e.g., an Azure resource group). The script should define a provider (Azure) and a resource (e.g., resource group).

### Step 5: Push to GitHub
Once the setup is complete, push the changes to GitHub using Git commands:
- Stage the changes using `git add .`
- Commit the changes with a meaningful commit message.
- Push the changes to the main branch of your repository.

## GitHub Actions Workflow

### Step 6: Create GitHub Actions Workflow for Validation

In the `.github/workflows` directory, create a workflow file named `action-terraform-verify.yml`. This workflow will include jobs to:
1. Check Terraform file formatting with `terraform fmt`.
2. Validate Terraform syntax with `terraform validate`.
3. Run TFLint to lint the Terraform code.

The workflow will be triggered by a pull request to the main or master branch. The actions include configuring Terraform, validating the code, and ensuring proper formatting.

### Step 7: Test the Pipeline
To test the pipeline:
1. Modify the Terraform script and introduce an error (e.g., incorrect formatting or syntax error).
2. Commit the changes and push them to the repository.
3. Create a pull request to trigger the GitHub Actions workflow.
4. Ensure that the workflow fails due to the introduced errors, and then fix the errors to see the workflow pass.
