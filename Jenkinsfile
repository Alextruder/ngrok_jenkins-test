pipeline{
    agent any
    
    stages{
        stage('NPM Build'){
            steps{
                sh "service docker restart"
                sh "docker-compose up"
            }
        }
    }
}