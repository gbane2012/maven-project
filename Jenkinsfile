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

    stage('QA') {
     parallel(longerTests: {
        runTests(30)
     }, quickerTests: {
        runTests(20)
    })
     echo "Test results: ${testResult(currentBuild)}"
    }
}
