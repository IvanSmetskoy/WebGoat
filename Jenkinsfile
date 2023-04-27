pipeline {
  agent any
  stages {
    stage('Semgrep') {
      steps {
        sh "docker run -v ${WORKSPACE}:/src --workdir /src returntocorp/semgrep-agent:v1 semgrep-agent --config p/ci --config p/security-audit --config p/secrets"
      }
    }
    
    stage('Deptrack'){
        steps {
          sh "bash deptrack.sh"
        }
      }
  }
}
