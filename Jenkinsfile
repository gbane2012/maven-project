#!groovy

stage('Checkout Dev'){
    node {
        checkout scm
        }
     }
stage('Build'){
    node {
        sh '/opt/maven/bin/mvn clean install'
        
    }
}
stage('Static analysis')
    node {
        sh '/opt/maven/bin/mvn checkstyle:checkstyle'
        
    }
}


