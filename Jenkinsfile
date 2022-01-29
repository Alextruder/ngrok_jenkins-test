pipeline{
    agent any
    
    stages{
        stage('NPM Build'){
            steps{
                sh "sudo service docker restart"
                sh "docker-compose up"
            }
        }
    }
}