stage('Checkout Dev') {
    node {
        checkout scm
    }
}
node{
  stage ('Build') {
 
    git url: 'https://github.com/gbane2012/maven-project.git'
      // Run the maven build
      sh "mvn clean install"
 
    } // withMaven will discover the generated Maven artifacts, JUnit Surefire & FailSafe reports and FindBugs reports
  }

