stage('Checkout Dev') {
    node {
        checkout scm
    }
}
stage('Build') {
    node {
       mvn'clean install'
    }
}

