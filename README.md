# Terraform Beginner Bootcamp 2023

## Semantic Versioning :mage:

This project is going to utilize semantic versioning for its tagging.
[semver.org](https://semver.org)

The general format:

 **MAJOR.MINOR.PATCH**, e.g. `1.0.1`

**MAJOR** version when you make incompatible API changes
**MINOR** version when you add functionality in a backward compatible manner
**PATCH** version when you make backward compatible bug fixes

## Install the Terraform CLI

### Considerations with the Terraform CLI changes

The Terraform CLI installation instructions have changed due to GPG keyring changes, so original gitpod.yml bash configuration didn't complete automatically.  We needed to refer to latest CLI installation instructions from HashiCorp 

[Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

[Linux File Permissions](https://en.wikipedia.org/wiki/File-system_permissions)

## Refactoring into Bash Scripts

while fixing the Terraform issues we found the Bash shell scripts were a larger amount of code so we decided to move the installation to a dedicated shell script.   This helps to keep the Gitpod tasks file more tidy and makes it easier to update it in the future.  In addition we changed the task execution mode from Init to Before to ensure it runs every time the GitPod workspace opens.

[GitPod Tasks](https://www.gitpod.io/docs/configure/workspaces/tasks)