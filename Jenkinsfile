#!groovy

stage('Checkout Dev'){
    node {
        checkout scm
        }
     }
stage('Build'){
    node {
        sh '/opt/maven/bin/mvn clean install'
        dir('target') {stash name: 'war', includes: 'x.war'}
        
    }
}
stage('Static analysis'){
    node {
        sh '/opt/maven/bin/mvn checkstyle:checkstyle'
        
    }
}
stage('QA') {
    parallel(longerTests: {
        runTests(30)
    }, quickerTests: {
        runTests(20)
    })
    echo "Test results: ${testResult(currentBuild)}"

}
