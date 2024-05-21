## Project Structure

The ansible playbook is made up of roles, each role performing a specific function. The roles are located in the roles directory and in each role folder there is meta and tasks folder. The  meta directory  has a `main.yml `that has a description of  the task and metadata (i.e Author Name, Contributors). The task directory contains a `main.yml` that contains the actual task itself.

```
├── roles
│   ├── CloneRepo
│   │   ├── meta
│   │   │   ├── main.yml
│   │   ├── tasks
│   │       ├── main.yml
│   ├── InstallDocker
│   ├── RunContainers
│   
├── playbook.yml


```
The  `playbook.yml` is the main anisble playbook that runs all the roles.

The Vagrantfile is used to configure the local virtual machine and it contains a provisioner that automatically runs the anisble playbook once the virtual machine starts
