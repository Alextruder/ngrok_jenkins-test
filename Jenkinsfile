pipeline {
    agent any
    
    stages {
        stage('Cloning git') {
            steps {
                git([url: 'https://github.com/Alextruder/ngrok_jenkins-test.git', branch: 'main'])
            }
        }
        stage('NPM build'){
            steps {
                sh "npm install"
                sh "nohup npm start &"
            }
        }
    }    
}