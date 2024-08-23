
pipeline {
    agent {
        label 'AGENT-2'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    
    stages {
        stage('Init') {
            steps {
               sh """
                cd 01-vpc
                terraform init -reconfigure
               """
            }
        }
        stage('plan') {
            steps {
                sh 'echo This is plan'
                
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo This is Deploy'
                
            }
        }
        
        
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }
        success{
            echo 'I will run when pipeline is success'

        }
        failure{
            echo 'I will run when pipeline is failure'

        }
        
    }
}
