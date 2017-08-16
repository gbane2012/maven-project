stage('Checkout Dev') {
    node {
        checkout scm
    }
}
stage('Build') {
    node {
       sh 'mvn clean install'
    }
}

