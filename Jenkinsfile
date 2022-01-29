pipeline{
    agent any
    
    stages{
        stage('NPM Build'){
            steps{
                sh "sudo usermod -aG docker $USER"
                sh "sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose"
                sh "sudo service docker restart"
                sh "docker-compose up"
            }
        }
    }
}