stage('Checkout Dev') {
    node {
        checkout scm
    }
}

stage('Build') {
   
        sh 'mvn clean install'
    }
}

