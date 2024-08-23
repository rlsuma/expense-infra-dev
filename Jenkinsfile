
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
        
    
    post { 
        always { 
            echo 'I will always say Hello again!'
            
        }
        
    }
}
