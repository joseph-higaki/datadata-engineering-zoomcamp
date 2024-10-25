# Opening data-engineering-zoomcamp from a Dev Container

Working from github codespaces works ok

Trying to launch a dev container using the same settings

what I did:

## Downloaded Docker for Win 
![alt text](image.png)

## Opened folder Dev Containers: Open Folder

![alt text](image-1.png)

TOok 1 hr to build. Finnally, the container is build
![alt text](image-2.png)

And the folder is opened as Dev Container
![alt text](image-3.png)

## PROBLEM: Cannot git remote

Troubleshoot:

Based on Article:
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/using-ssh-agent-forwarding 

### Check git config
[`git config -l`](./git-config-l-troubleshoot.sh)

![alt text](image-4.png)

### Check git remote
`git remote show origin` 

![alt text](image-5.png)

### Check SSH to git 

[`$ssh -v git@github.com`](./ssh-v-github-troubleshoot.sh)
![alt text](image-6.png)

### Check ssh credeintials
ssh-add -l
<table>
<thead>
<tr>
<th>
 Local      
 </th>
<th>
 Codespaces 
 </th>
<th>
 DevContainer   
 </th>
</tr>
<tr>
<td>
run as admin 

```bash
PS C:\Windows\system32> Get-Service -Name ssh-agent | Set-Service -StartupType Manual
PS C:\Windows\system32> Start-Service ssh-agent
```      

```bash
$ ssh-add -l
The agent has no identities
```
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td>
SSH works git pull as well
<img src="image-9.png">
</td>
<td>
SSH doesnt work but git commands do work
<img src="image-8.png">

</td>
<td>
SSH doesnt work but git don't work either
<img src="image-10.png">
</td>
</tr>
</table>


**I'm stuck trying to make dev container work with GITHUB**













https://github.com/ripienaar/free-for-dev/blob/master/README.md