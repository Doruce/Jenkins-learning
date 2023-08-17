pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
              sh '''
               ./jenkins/build/maven.sh mvn -B -DskipTest clean package
               ./jenkins/build/build.sh 
               '''
            }
        }

        stage('Test'){
            steps {
                sh './jenkins/test/maven.sh mvn test'
            }
        }

        stage('Build') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }

        
    }
}
