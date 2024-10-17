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
![signing in github](../_resources/01%20signining%20in%20github%20login.png.png)
opened a breowser window
![browser authorize vscode into githubcodespace 1](../_resources/01%20browser%20authorize%20vscode%20into%20githubcodespace%2001.png)
![browser authorize vscode into githubcodespace 2](../_resources/01%20browser%20authorize%20vscode%20into%20githubcodespace%2002.png)

1. Asking again to open VS cpde
![ask again open vs code](../_resources/01%20ask%20again%20open%20vs%20code.png)

1. Loading codespace in VS Code (11:47 am)
![loading codespace in vs code](../_resources/01%20loading%20codespace%20in%20progress%20vs%20code.png)

## Attemp 2: Github Codespaces 2 (if #1 doesn’t work)
Use a github codespace using [.devcontainer folder](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/beb77c92b9a0982b718c588bdee207764c319857/.devcontainer) provided at course structure using the [course video](https://www.youtube.com/watch?v=XOSUt8Ih3zA&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=17)
codespace is created pointing to the full course cloned repo

### New Codespace


## Attemp 3: GCP Cloud VM 

## Attemp 4: Local Docker and Local Terraform?? video
