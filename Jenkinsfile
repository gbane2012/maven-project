#!groovy

node {

    stage('Checkout Dev'){
         checkout scm
    }
     
    stage('Build'){
        sh '/opt/maven/bin/mvn clean install'
        
        
    }


    stage('Static analysis'){
        sh '/opt/maven/bin/mvn checkstyle:checkstyle'
        
    }

    stage('Test') {
       sh '/opt/maven/bin/mvn -Dtest=TestCircle test'
    }
     
}
