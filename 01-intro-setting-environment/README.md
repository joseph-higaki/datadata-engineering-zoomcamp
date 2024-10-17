# Setting up 

## Folders and Workspace
I'll be using a single folder for all course artifacts. 
Folder structure
![Initial Folder Structure](../_resources/01_initial_folder_structure.png)

## Init Git 
`git init`
![git init](../_resources/01_init%20git.png)

```
git remote add origin git@github.com:joseph-higaki/datadata-engineering-zoomcamp.git
git add.
git commit -m "first commit"
git push -u origin main
```
![git push failed attempt](../_resources/01_git%20push%20failed%20attemp.png)

Failed as I had only setup my newly issued Signing key, added also the Authentication key, and then it worked
![adding ssh auth keys to github](../_resources/01_adding%20ssh%20auth%20keys%20to%20github.png)

Retry `git push`, it worked now
![git push success](../_resources/01_git%20push%20success.png)

## Attempt 01: Github Codespaces 1
Use a github codespace using [.devcontainer folder](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/beb77c92b9a0982b718c588bdee207764c319857/.devcontainer) provided at course structure using the [course video](https://www.youtube.com/watch?v=XOSUt8Ih3zA&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=17)

But I just copied the .devcontainer folder to my workspace.
And codespace is created pointing to my workspace.
[Instructions here](../.devcontainer/README.md#option-2-github-codespaces)

1. Create Codespace
![create codespace](../_resources/01%20dialog%20create%20codespace.png)
![create codespace open vs code](../_resources/01%20dialog%20create%20codespace%20open%20vs%20code.png)

1. Opened a new vs code window
![ new vscode window codespace](../_resources/01%20new%20vscode%20window%20codespace.png)

1. Asking me to github login
![allow github login dialog](../_resources/01%20allow%20github%20login%20dialog.png)
![signing in github](../_resources/01%20signining%20in%20github%20login.png)

1. Opened a breowser window
![browser authorize vscode into githubcodespace 1](../_resources/01%20browser%20authorize%20vscode%20into%20githubcodespace%2001.png)
![browser authorize vscode into githubcodespace 2](../_resources/01%20browser%20authorize%20vscode%20into%20githubcodespace%2002.png)
1. Asking again to open VS code
![ask again open vs code](../_resources/01%20ask%20again%20open%20vs%20code.png)

1. Loading codespace in VS Code (11:47 am)
![loading codespace in vs code](../_resources/01%20loading%20codespace%20in%20progress%20vs%20code.png)

1. Opened VS Code workspace 
![Opened VS Code workspace](../_resources/01%20opened%20vs%20code%20workspace%20from%20codespace.png)

1. check python, docker and terraform
![check python, docker and terraform](../_resources/01%20check%20container%20installs.png)

1. No terraform, install 
```
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

<details>
<summary> Output of installing Terraform
</summary>

```PowerShell
 python --version
Python 3.9.20
 docker --version
Docker version 27.0.3-1, build 7d4bcd863a4c863e650eed02a550dfeb98560b83
 terraform --version
terraform: The term 'terraform' is not recognized as a name of a cmdlet, function, script file, or executable program.
Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
 lsb_release -a
No LSB modules are available.
Distributor ID: Debian
Description:    Debian GNU/Linux 11 (bullseye)
Release:        11
Codename:       bullseye
 wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
--2024-10-17 07:37:48--  https://apt.releases.hashicorp.com/gpg
Resolving apt.releases.hashicorp.com (apt.releases.hashicorp.com)... 18.245.143.63, 18.245.143.93, 18.245.143.105, ...
Connecting to apt.releases.hashicorp.com (apt.releases.hashicorp.com)|18.245.143.63|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 3980 (3.9K) [binary/octet-stream]
Saving to: ‘STDOUT’

-                             100%[=================================================>]   3.89K  --.-KB/s    in 0.002s  

2024-10-17 07:37:48 (2.40 MB/s) - written to stdout [3980/3980]

 echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com bullseye main
 sudo apt update && sudo apt install terraform
Get:1 http://deb.debian.org/debian bullseye InRelease [116 kB]
Get:2 http://deb.debian.org/debian-security bullseye-security InRelease [27.2 kB]                                      
Get:3 http://deb.debian.org/debian bullseye-updates InRelease [44.1 kB]                                            
Get:4 https://packages.microsoft.com/repos/azure-cli bullseye InRelease [3,608 B]                                      
Get:5 https://apt.releases.hashicorp.com bullseye InRelease [12.9 kB]                                                  
Get:6 https://dl.yarnpkg.com/debian stable InRelease [17.1 kB]                                                         
Get:7 http://deb.debian.org/debian bullseye/main amd64 Packages [8,066 kB]                                             
Get:8 https://packages.cloud.google.com/apt cloud-sdk InRelease [1,618 B]      
Get:9 http://deb.debian.org/debian-security bullseye-security/main amd64 Packages [303 kB] 
Get:10 http://deb.debian.org/debian bullseye-updates/main amd64 Packages [18.8 kB]
Get:11 https://apt.releases.hashicorp.com bullseye/main amd64 Packages [154 kB]   
Get:12 https://packages.microsoft.com/repos/microsoft-debian-bullseye-prod bullseye InRelease [3,650 B]
Get:13 https://packages.microsoft.com/repos/azure-cli bullseye/main all Packages [1,852 B]
Get:14 https://packages.microsoft.com/repos/azure-cli bullseye/main amd64 Packages [1,867 B]
Get:15 https://dl.yarnpkg.com/debian stable/main all Packages [10.9 kB]
Get:16 https://dl.yarnpkg.com/debian stable/main amd64 Packages [10.9 kB]
Get:17 https://packages.microsoft.com/repos/microsoft-debian-bullseye-prod bullseye/main amd64 Packages [155 kB]
Get:18 https://packages.microsoft.com/repos/microsoft-debian-bullseye-prod bullseye/main all Packages [1,426 B]
Get:19 https://packages.cloud.google.com/apt cloud-sdk/main all Packages [1,552 kB]
Get:20 https://packages.cloud.google.com/apt cloud-sdk/main amd64 Packages [3,339 kB]
Get:21 http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_11  InRelease [1,556 B]
Get:22 http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_11  Packages [1,843 B]
Fetched 13.8 MB in 2s (8,798 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
51 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  terraform
0 upgraded, 1 newly installed, 0 to remove and 51 not upgraded.
Need to get 28.0 MB of archives.
After this operation, 89.1 MB of additional disk space will be used.
Get:1 https://apt.releases.hashicorp.com bullseye/main amd64 terraform amd64 1.9.8-1 [28.0 MB]
Fetched 28.0 MB in 0s (125 MB/s)   
Selecting previously unselected package terraform.
(Reading database ... 114230 files and directories currently installed.)
Preparing to unpack .../terraform_1.9.8-1_amd64.deb ...
Unpacking terraform (1.9.8-1) ...
Setting up terraform (1.9.8-1) ...
```
</details>

Terraform Installed 
![Terraform Installed](../_resources/01%20terraform%20installed.png)

1. Check install Jupyter notebook 
    ```
    pip install jupyter        
    ```

1. Open bash command line (so far I was in pwshell)
    ```
    jupyter notebook
    ```
    ![open jupyter](../_resources/01%20open%20jupyter.png)

1. See port forwarding/ Running processes  (Ignore  the MS Store dialog)
    ![ports running jupyter](../_resources/01%20ports%20runnning%20jupyter.png)

1. Access Jupyter
```
    To access the server, open this file in a browser:
        file:///home/vscode/.local/share/jupyter/runtime/jpserver-20519-open.html
    Or copy and paste one of these URLs:
        http://localhost:8888/tree?token=186966d785b8d21c43600f05e082386ec19d8795982a3ba1
        http://127.0.0.1:8888/tree?token=186966d785b8d21c43600f05e082386ec19d8795982a3ba1
```

1. Create Hello World Jupyter notebook
![Create Hello World Jupyter notebook](../_resources/01%20jupyter%20notebook%20helloworld.png)

1. commit push new [notebook](./CodespaceNotebookHelloWorld.ipynb)

**Break**
Going to lunch

**Closed VS Code where codespace was running**

**De-selected Auto-delete codespace at [github](https://github.com/codespaces/)**
Because if I don't, I may need to re-install jupyter and terraform

**Selected Stop Codespace**
So that core mins are not spent :)




## Attemp 2: Github Codespaces 2 (if #1 doesn’t work)
Use a github codespace using [.devcontainer folder](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/beb77c92b9a0982b718c588bdee207764c319857/.devcontainer) provided at course structure using the [course video](https://www.youtube.com/watch?v=XOSUt8Ih3zA&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=17)
codespace is created pointing to the full course cloned repo

### New Codespace

## Attemp 3: GCP Cloud VM 

## Attemp 4: Local Docker and Local Terraform?? video
