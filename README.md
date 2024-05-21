# USING ANSIBLE AND DOCKER TO RUN A SIMPLE REACT APP 

This project aims to make spinning up a simple react app quickly and easily either on a local virtual machine or on the cloud(Amazon EC2) using ansible and Docker.

## Local Virtual Machine

### Quick Start Guide

#### 1 - Install dependencies (VirtualBox, Vagrant, Ansible)

  1. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
  2. Download and install [Vagrant](http://www.vagrantup.com/downloads.html).
  3. Download and install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

#### 2 - Build the Virtual Machine

  1. Download this project.
  2. Open Terminal, cd to this directory (containing the `Vagrantfile` and this README file).
  3. Type in `vagrant up`. The ansible playbook will run automatically since it has been provisioned in the Vagrantfile. (If  your vm is already running run `vagrant provisoning`)
## EC2 Virtual Machine

### Quick Start Guide

#### 1 - Install Terraform

  1. Switch to `Stage_two` branch
  2. Download this project.
  3. Open Terminal, cd to Stage_two directory (containing the terraform files).
  4. Type in `terraform init`to initialize
  5. Create a `terraform.tfvars` file and add key_pairs and private_key_path.

  ```
  key_name = "my-key-pair"
  private_key_path = "~/.ssh/my-private-key"
  
  ```
  6. Run `terraform apply` (The ansible playbook wil run automatically and start the docker containers)
  7. The public Ip address will be shown and you can access the site using it.
