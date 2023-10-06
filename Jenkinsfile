pipeline {
  agent any 
  tools {
    maven 'maven'
  }
 
  stages {
    stage('Checkout Source') {
      steps {
        git 'https://github.com/shazforiot/nodeapp_test.git'
      }
    }
    stage ('Unit Test') {
      steps {
          sh 'mvn test'
      }   
    }


    pipeline {



  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/shazforiot/nodeapp_test.git'
      }
    }
