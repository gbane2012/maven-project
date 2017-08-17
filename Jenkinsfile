#!groovy

node {

    stage('Checkout Dev'){
     checkout
      ([$class: 'GitSCM', 
         branches: [[name: '*/develop']], 
         doGenerateSubmoduleConfigurations: false, 
         userRemoteConfigs: [[credentialsId: 'git', 
         url: 'https://github.com/gbane2012/maven-project.git']]])
    }
     
    stage('Build'){
        sh '/opt/maven/bin/mvn clean install'
        
        
    }


    stage('Static analysis'){
        sh '/opt/maven/bin/mvn checkstyle:checkstyle'
        
    }

    stage('Test') {
       sh '/opt/maven/bin/mvn test'
    }
     
}
