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
            agent {
                docker {
                    image 'mingc/android-build-box:1.11.1'
                    label 'linode-ubuntu19.04'
                    args "--rm -v "$PWD":/project bach -c 'cd /project; ./gradlew assembleDebug --no-daemon'"
                }
            }
            steps {
                echo '****** Start Build Process *******'
        }
    }
  }
}
