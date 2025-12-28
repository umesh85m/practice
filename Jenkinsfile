pipeline {
    agent any
    triggers {
        pollSCM('* * * * *') // optional, for testing. Otherwise use webhooks
    }
    stages {
        stage('Pull Repo') {
            steps {
                git branch: 'develop', url: 'https://github.com/umesh85m/practice/new/main.git'
            }
        }
        stage('List Files') {
            steps {
                sh 'ls -l'
            }
        }
    }
}
