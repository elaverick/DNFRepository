# GitHub DNF/YUM Repository using Terraform

This repository contains Terraform code to create a Linux DNF or YUM repository hosted on GitHub. It automates the process of creating the repository in GitHub, building the DNF repo, committing the repository to GitHub, and exposing it via GitHub Pages, allowing access from Linux over HTTPS.

## Prerequisites

Before getting started, make sure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [Git](https://git-scm.com/downloads)

This readme assumes you are running on a Linux distribution which already uses YUM or DNF as its native package management application such as Rocky Linux.

You'll also need a GitHub account and a personal access token.

1. Create a [Personal Access Token](https://github.com/settings/tokens) on GitHub with the necessary permissions to create repositories.

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone git@github.com:elaverick/DNFRepository.git
    ```

2. Navigate to the cloned directory:

    ```bash
    cd DNFRepository
    ```

3. Initialize Terraform:

    ```bash
    terraform init
    ```

4. Create a `terraform.tfvars` file and set the following variables:

    ```hcl
    name = "your-repository-name"
    description = "Description of your repository"
    /* Optional */
    cname = "The URL to use a CNAME for your repository"
    ```

    Set the `GITHUB_TOKEN` environment variable to your personal access token:

    ```bash
    export GITHUB_TOKEN="your-personal-access-token"
    ```

5. Apply the Terraform configuration:

    ```bash
    terraform apply
    ```

6. After Terraform has finished creating the repository and configuring GitHub Pages, you can access your DNF/YUM repository via HTTPS. The URL will typically be in the format `https://your-username.github.io/your-repo/`.

## Configuration

You can customize the configuration by modifying the `variables.tf` file. Additionally, you can adjust the structure of your DNF/YUM repository by editing the relevant scripts in the `scripts` directory.

## Cleanup

To remove the resources created by Terraform and delete the repository from GitHub, run:

```bash
terraform destroy
```

Confirm the destruction by typing yes when prompted.

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License
This project is licensed under the MIT License.