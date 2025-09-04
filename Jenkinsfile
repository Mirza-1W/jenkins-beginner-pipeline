pipeline {
  agent any
  options { timestamps() }
  stages {
    stage('Checkout') {
      steps {
        // pulls your repo code
        checkout scm
      }
    }
    stage('Build') {
      steps { bat 'scripts\\build.bat' }
    }
    stage('Test') {
      steps { bat 'scripts\\test.bat' }
    }
    stage('Package') {
      steps { bat 'scripts\\package.bat' }
    }
  }
  post {
    always {
      // keep the artifact with the build
      archiveArtifacts artifacts: 'artifact.zip', fingerprint: true
      // placeholder so you see how test publishing is wired
      junit allowEmptyResults: true, testResults: 'reports\\*.xml'
    }
    success { echo 'Build succeeded ✅' }
    failure { echo 'Build failed ❌' }
  }
}

