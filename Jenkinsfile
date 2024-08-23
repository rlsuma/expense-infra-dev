
pipeline {
    agent {
        label 'AGENT-2'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        
    }
    
    stages {
        stage('Init') {
            steps {
               sh """
                echo this is test
               """
            }
        }
    }
        stage('plan') {
            steps {
                sh 'echo This is Test'
                
            }
        }
    
    post { 
        always { 
            echo 'I will always say Hello again!'
            
        }
        
    }
}
