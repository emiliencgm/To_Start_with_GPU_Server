# To Start:
The following steps show how to run a code on our server with GPU. If you are already familiar with Anaconda, then go to the script **run.sh** for a direct example.

For specific/more commands on, for example, creating an environment with Anaconda and manage your GPUs, it's recommended to go to ChatGPT. 

## Select a Software to Connect to the Server 
There are plenty of softwares that help with remote server managment. Even with the "CMD/Terminal" of Windows/MacOs can you do your work: simply connected with ` ssh user@Ip_Address  `

I myself recommend VSCode, because the UI is really user-friendly. Then you can connect to the server through VSCode plugins/addons, e.g., "Remote-SSH".

Regardless of your choice, you will control the server and get the output through command line (i.e., a terminal). 

## Install Anaconda
Download the correct version of Anaconda since we are using a Linux server. 
Once installed, you will have a "conda" in your terminal. 

## Create an Environment
To manage different dependencies (or different package versions), it's highly recommended to create a separate environment for each project.

**Tips:** You can even create an environment for R language (useful for data analysis) with conda. 

## Install Required Packages
To install packages for a specific environment you have created, first enter `conda activate environment_name`. Then you can install any packages you need in this independent space.

## Run Code with GPU

### Preliminary
When you connect to the server "titi", you should be on the "login" node. Generally, it's not recommended to run code on "login" node (although there's a 60-core cpu). Instead, you can submit a job from "login" node to a calculation partition. By entering ` sinfo ` in the command line, you can see there's a partition named ` gpuq `. That's the partition where our GPUs are installed.

### Submit a Job
Our server uses **sbatch** to manage job submission.
A script `run.sh` is already created to show how to submit a job and run the python code "example.py".
Then, in the command line, enter ` sbatch run.sh ` and the job will be submitted. You will see the output created in your current directory. 
To supervise the condition of GPUs, you can also do ` sbatch gpu.sh `.