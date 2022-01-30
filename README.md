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
First, you need to run ngrok using the following command: `ngrok http 8080`. If it works well, you will have the following message on your CLI.

![ngrok1]()

You need to copy the left part of the first or second **Forwarding** line and add it to github webhooks. You can find it at Setting >> Webhooks >> Add Webhook. Don't forget to add "/github-webhook" at the end of the link.

Then, access to Jenkins Dashbord using `localhost:8080`

## Create a new pipeline
Once you are on Jenkins Dashbord, you will create a pipeline to allow the verification of the code you will push on Github.

To do that, select **New Item** >> **Pipeline**, and add a name for your new project.

Then, select the following features:

![Pipeline1]()

![Pipeline2]()

![Pipeline3]()







# The first push will not be displayed, you need to do it manually the first time (on windows btw)
