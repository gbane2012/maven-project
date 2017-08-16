#!groovy

stage('Checkout Dev'){
    node {
        checkout scm
        }
     }
stage('Build'){
    node {
        sh '/opt/maven/mvn clean install'
        
    }
}


