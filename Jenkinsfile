stage('Checkout Dev') {
    node {
        checkout scm
        sh '/opt/maven/bin/mvn clean install'
    }
}

