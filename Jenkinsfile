pipeline {
  
  agent any
  
  stages {
    stage('build war') {
      steps  {
        ansiColor('xterm') {
          sh 'mvn clean package install'
        }
      }
    }

    stage('upload to artfacotry') {
      steps {
        rtUpload (
          serverId: "art",
          spec:
          """{
            "files": [{
              "pattern": "target/*.war",
              "target": "example-repo-local/"
             }]
           }"""
        )
      }
    }
    
    stage('deploy to aws tomcat') {
      steps {
         build job: 'pipeline/deploy/develop'
      }
    }
    
  }
  
  post {
    always {
      deleteDir()
    }
  }
  
} 
