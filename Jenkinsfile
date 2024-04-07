    pipeline {
    agent any
    stages {

        stage('pull') {
            steps {
                git branch: 'main', url: 'https://github.com/tejas5315/Amazon-Jenkins.git'
            }
        }
        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }
               stage('build') {
            steps {
                 sh 'mvn clean install'
            }
        }
    
            stage('buildimages') {
        steps {
            sh 'cp /var/lib/jenkins/workspace/Jenkinsfile/Amazon-Core/target/Amazon-Core-1.0-SNAPSHOT.jar .'
            sh 'docker build -t newimage .'
        }
    }
}
    }       
  post{
    
  failure{
       echo 'Failure in the build'
   }

  }

