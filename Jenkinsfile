pipeline {
    agent {
        label 'linode-ubuntu19.04'
    }
    stages {
        stage('Git Clone'){
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/louiszgm/AndroidPipelineDemo.git']]])
            }
        }
        stage('Build') {
            steps {
                echo '****** Start Build Process *******'
                sh "docker run --rm -v ${env.WORKSPACE}:/project mingc/android-build-box:1.11.1 bash -c 'cd /project; ./gradlew assembleDebug --no-daemon'"
        }
    }
  }
}
