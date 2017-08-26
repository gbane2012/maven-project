#!groovy

node {
    def app 

    stage('Clone repository'){
     checkout([$class: 'GitSCM',branches: [[name: '*/develop']],doGenerateSubmoduleConfigurations: false,userRemoteConfigs: [[credentialsId: 'git',url: 'https://github.com/gbane2012/maven-project.git']]])
    }
    
    stage('Build image and Mavenize project'){
        sh '/opt/maven/bin/mvn clean install'
        archiveArtifacts artifacts: '**/*.war', onlyIfSuccessful: true
        
        
    }


    stage('Static analysis'){
        sh '/opt/maven/bin/mvn checkstyle:checkstyle'
        
    }

    stage('Test') {
       sh '/opt/maven/bin/mvn clean test'
       
    }
     
}
