stage('Checkout Dev') {
    node {
        checkout scm
    }
}
stage('Build') {
    node {
       mvn '-o clean install'
    }
}

