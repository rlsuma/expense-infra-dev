pipeline {
    agent {
        label 'AGENT-2'

    }
     options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
    }
    

    
    

    stages {
        stage('init') {
            steps {
                sh """
                sh ls -ltr
                """
            }
        }
        stage('plan') {
            steps {
                sh 'echo This is Test'
                sh 'sleep 10'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo This is Deploy'
            }
        }
        stage("print params"){
            steps{
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"
                echo "triggered test again"
            }
        }
    }
    post{
        always{
            echo 'I will always say Hello again'
        }
        success {
            echo 'I will run when pipeline is success'
        }
        failure{
            echo 'I will run when pipeline is success'
        }
    }
}