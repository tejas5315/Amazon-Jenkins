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
    }
            stage ('build images'){
        steps {
            sh 'docker build .'
        }
    }
}
  post{
    
  failure{
       echo 'Failure in the build'
   }

  }

