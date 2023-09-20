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


### Working with Env Vars

We can list out all Environment Variables (Env Vars) using the `env` command.
We can filter specific env vars using grep e.g. `env | grep AWS_`

#### Setting and Unsetting Env Vars

In the terminal we can set using `export HELLO='world'`

In the terminal we can unset using `unset HELLO`

Within a bash script we can set env var without writing export e.g. 

```sh
HELLO='world'
```

#### Printing Vars

We can print an env var using echo e.g. `echo $HELLO`



#### Scoping of Env Vars

Remember that Env Vars are environment specific i.e. each Bash shell is independent.   Solve this by scoping your env vars properly.

If you want Env Vars to persist across all future bash sessions, you need to set Env Vars in your bash profile, e.g. `.bash profile`

#### Persisting Env Vars in GitPod

We can persist Env Vars in GitPod by storing them in GitPod Secrets storage

```
gp env HELLO='world'
```

All future workspaces launched will set the env vars for all bash terminals opened in those workspaces.
You can also use gitpod.yml but that should only be used for non-sensitive vars


### AWS CLI Installation

AWS CLI is installed for this project via a bash script [`.bin/install_aws_cli`](.bin/install_aws_cli)

[Getting started install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

We can check if our AWS Credentials are configured correctly by running the following AWS CLI command

```
aws sts get-caller-identity
```

If it is successful you should see a JSON payload return that looks like this:

```json
{
    "UserId": "AIDAYTTJHY7MXEXAMPLE",
    "Account": "1111111111111",
    "Arn": "arn:aws:iam::111111111111:user/terraform-beginner-bootcamp"
}

```

Rather than setting AWS credentials via `aws configure`, we should always use environment variables when working in a CDE.

[Environment Variables to conifgure the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)