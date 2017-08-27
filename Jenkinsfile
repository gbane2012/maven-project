#!groovy

node {
    
    stage('configure') {
        env.PATH = "${tool 'maven-3.3.9'}/bin:${env.PATH}"
    }
    
   

    stage('Clone repository'){
     checkout([$class: 'GitSCM',branches: [[name: '*/develop']],doGenerateSubmoduleConfigurations: false,userRemoteConfigs: [[credentialsId: 'git',url: 'https://github.com/gbane2012/maven-project.git']]])
    }
    
    stage('Build image and Mavenize project') {
        sh 'mvn clean install'  
        
    }


    stage('Static analysis') {
        sh 'mvn checkstyle:checkstyle'
        
    }

    stage('Test') {
       sh '/opt/maven/bin/mvn clean test'
       
    }
     
}
