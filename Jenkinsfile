pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    tools {
        maven 'M2_HOME'
    }
    stages {
        stage('build') {
            steps{
            sh 'mvn clean'
            sh 'mvn install'
            sh 'mvn package'
    
            }
        }
        stage ('deploy to tomcat'){
            steps {
                deploy adapters: [tomcat8(credentialsId: 'deploy-to-tomcat', path: '', url: 'http://192.168.1.6:8080/')], contextPath: null, war: '**/*.war'
            }
        }
    }
}