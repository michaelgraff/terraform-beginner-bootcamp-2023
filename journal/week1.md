# Terraform Beginner Bootcamp 2023 - Week 1 Journal

## Root Module Structure

Our root module structure is as follows:

```
- PROJECT_ROOT
  |-- variables.tf           # stores the structure of input variables
  |-- main.tf                # everything else 
  |-- providers.tf           # defined required providers and their configuration
  |-- outputs.tf             # stores our outputs
  |-- terraform.tfvars       # the data of variables we want to load into our terraform project
  |-- README.md              # required for TF modules
```

[Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

## Terraform Cloud Variables

In Terraform Cloud we can set two kinds of variables

- Environment Variables - shell variables that you would normally set in your shell profile and are used during plan and apply runs in the cloud 
- Terraform Variables - variables that you would normally set in your terraform.tfvars file

When creating variables in Terraform Cloud, you can set them to be sensitive so they can no longer be viewed after being input.

## Loading Terraform Input Variables

[Terraform Input Variables documentation](https://developer.hashicorp.com/terraform/language/values/variables)

### var flag

We can use the `-var` flag to override a defined input variable in the terraform.tfvars file at run time 

### var-file flag

To set lots of variables, it is more convenient to specify their values in a variable definitions file (with a filename ending in either .tfvars or .tfvars.json) and then specify that file on the command line with -var-file:

### terraform.tfvars 

this is the default file that is used to bring in variables in bulk

### auto.tvfars

Terraform auto loads tfvars files only when they are named terraform.tfvars or terraform.tfvars.json.

Is it possible to ensure that tfvars files following custom naming schemes are loaded automatically?

It is in fact possible to name your file whatever you wish and have Terraform load it automatically. All we have to do is provide the file name with .auto.tfvars as an extension. Let’s try it out.

