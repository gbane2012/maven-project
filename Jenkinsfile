stage('Dev') {
    node {
        checkout scm
        dir('target') {stash name: 'war', includes: 'x.war'}
    }
}
