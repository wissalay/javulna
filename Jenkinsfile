pipeline {
  agent any 
  tools {
    maven 'maven'
  }
  stages {
    stage('Checkout Source') {
      steps {
        git 'https://github.com/MarwenSoula/javulna.git'
      }
    }  
  stage ('Unit Test') {
      steps {
          sh 'mvn test'
      }   
    }
  stage ('Build') {
      steps {
          sh 'mvn clean install'
      }   
    }
   stage ('docker build') {
      steps {
          sh 'docker build -t javulna-0.1 .'
      }   
    }
  }
}
