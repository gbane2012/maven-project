stage('Checkout Dev') {
    node {
        checkout scm
    }
}
node{
  stage ('Build') {
 
    git url: 'https://github.com/gbane2012/maven-project.git'
 
    withMaven(
     
        // Maven settings and global settings can also be defined in Jenkins Global Tools Configuration
        mavenSettingsConfig: 'my-maven-settings',
        mavenLocalRepo: '.repository') {
 
      // Run the maven build
      sh "mvn clean install"
 
    } // withMaven will discover the generated Maven artifacts, JUnit Surefire & FailSafe reports and FindBugs reports
  }
}
