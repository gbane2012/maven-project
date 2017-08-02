#!groovy 

properties([
    buildDiscarder(logRotator(artifactNumToKeepStr: '5', daysToKeepStr: '10'))
])

docker.image('alecharp/java-build-tools:latest').inside('-v /Users/fetiguegbane/.m2:/home/build/.m2') {
	
	stage('Checkout') {
	checkout scm

	}

	writeFile file: 'settings.xml', text: '<settings><localRepository>/home/build/.m2/repository</localRepository>'

	stage('Build') {
	sh "mvn clean package -Dmaven.test.skip=true -s settings.xml"
	archiveArtifacts artifacts: 'target/*.jar' , fingerprint:true

	}
}