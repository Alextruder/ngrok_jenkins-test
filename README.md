# ngrok_jenkins-test

Here, I will display the following instructions to integrate jenkins with github, applied to a little project, which consists in creating a **React** app that will be run with a **Docker** container. 

## Components
You will need to install the following components on your machine: 
- Docker
- NodeJS
- Jenkins
- Java (required for previous components)
- ngrok


## Integrate ngrok to Github
First, create a new repository on Github.

Secondly, you need to run ngrok using the following command: `ngrok http 8080`. If it works well, you will have the following message on your CLI.

![ngrok1](/images/ngrok_cli_1.png)

You need to copy the left part of the first or second **Forwarding** line and add it to github webhooks. You can find it at `Setting >> Webhooks >> Add Webhook`. Don't forget to add "**/github-webhook**" at the end of the link.

![webhook](/images/webhook.png)

Then, access to Jenkins Dashbord using `localhost:8080` in your navigator.

## Verify implementation
Clone your Github repository on your device, add a new file in your project, then use 

```
git add .
git commit -m "message"
git push
```

If you did well the previous step, you should have a code 200 with a message "OK".

![ngrok2](/images/ngrok_cli_2.png)

## Create a new pipeline
Now we verified the webhook link worked well, we will create a new Pipeline in Jenkins Dashboard. It will allow the verification of code you will push on Github.

To do so, select `New Item >> Pipeline`, then add a name for your new project and validate your choice.

Then, select the following features:

In **General**:
- Github project &rarr; add the project URL that you use when you want to clone it, but **without the .git**

![Pipeline1](/images/jenkins_conf_1.png)

In **Build Triggers**:
- GitHub hook trigger for GITScm polling

![Pipeline2](/images/jenkins_conf_2.png)

In **Advanced Project Options**: Nothing

In **Pipeline**: 
  - Definition: `Pipeline script from SCM`
  - SCM: `Git`
  - Repository: <Your repository>.git
  - Branch Specifier: `*/main`
  - Script Path: `Jenkinsfile`

![Pipeline3](/images/jenkins_conf_3.png)

![Pipeline4](/images/jenkins_conf_4.png)
  
Finally, save the pipeline.
  
## Run the pipeline

First, you will probably need to run your pipeline manually with `Run a build` in your pipeline to have a display of the pipeline state. If you push changes without doing this, you can possibly have no output displayed.
  
Once you have done it, you can see if the pipeline succeed or failed and see logs in each case in order to verify if all worked as you wanted or how to correct a problem.
  
It should look like the following screen.

![Display](/images/pipeline_dash.png)

Finally, use `localhost:3000` in your navigator to see the webapp you created.
