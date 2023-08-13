# **End-User Instructions**
### This Demo Environment deploys a static website containing a Webgame (TetrisJS) that runs on a storage provider as a Web server. 
<br/>

- In the "Healthcheck" variant of the Blueprint, an additional healthcheck step executes using the "Shell" grain after the deployment of the website is complete.

- In the "CFN + TF" variant fo the Blueprint, the deployment is split into two IaC grains, the CFN grain creates the S3 bucket, and the TF grain uploads the webpage into it to make it into a static website.  
  
- In the S3 TF variants, an additional KMS grain that creates a rotating encryption key for HTTPS access sto the static website is used.  
<br/><br/><br/><br/><br/><br/>  

# **How-to-Demo Instructions**
**Demo Steps:**
1. Present the Space's catalog and explain the idea of publishing environment blueprints as self-service provisionable items. 
2. Choose this blueprint and present its concept and description *(click on it to show the expanded information)*
3. Click "Launch" and explain basic environment information *(Name, Duration, Permanance, Cost, Owner & collaborators)*
4. Click "Next" and explain environment input parameters, tags, Day 2 automation workflow association
5. Launch the environment and follow along the provisioning process, while explaining environment user views, inputs/outputs, activity log, instructions, and logs
6. **(When applicable)** Demonstrate "Resources view" and Day 2 actions
7. **(When applicable)** Connect to Torque Demo Production AWS/Azure account and demonstrate drift detection by modifying the tag values on any of the Torque created tags
8. **(When applicable)** Open VSCode/Github and demonstrate asset update flow
<br/><br/><br/><br/><br/><br/> 

# **Environment Screenshots**
<br/> 

**Webgame on Azure**<br/> <br/> 
![Webgame_Azure](env_images/Webgame_Azure.png)
<br/> 

**Webgame on GCP**<br/> <br/> 
![Webgame_GCP](env_images/Webgame_GCP.png)
<br/> 

**Webgame on AWS (CFN)**<br/> <br/> 
![Webgame_S3_CFN](env_images/Webgame_S3_CFN.png)
<br/> 

**Webgame on AWS (TF)**<br/> <br/> 
![Webgame_S3](env_images/Webgame_S3.png)
<br/> 

**Webgame on AWS with Healthcheck**<br/> <br/> 
![Webgame_S3_Healthcheck](env_images/Webgame_S3_Healthcheck.png)
<br/> 

**Webgame on vCenter**<br/> <br/> 
![Webgame_vCenter_Ansible](env_images/Webgame_vCenter_Ansible.png)
<br/><br/><br/><br/><br/><br/> 


# **Blueprint Information**
### Designer:       Leeor Vardi (leeor.v@quali.com)
### Target Clouds:  AWS/Azure/GCP
### [Demo page on Quali Confluence](https://quali.atlassian.net/wiki/spaces/QS/pages/2691399681/Webgame+on+Cloud+Storage+Service)
![Quali Logo](https://docs.qtorque.io/assets/images/logo-dm-f11e9cc418b94216dedd0b6e73e4a33d.svg)