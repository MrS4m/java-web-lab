pipeline {
    agent {
        docker {
            image 'maven:3.9.9-eclipse-temurin-17'
            args '-v /root/.m2:/root/.m2'
        }
    }

    options {
        timestamps()
        disableConcurrentBuilds()
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build e testes') {
            steps {
                sh 'mvn -B clean verify'
            }
        }

        stage('Validar artefato') {
            steps {
                sh 'test -f target/java-web-lab.war'
                sh 'sha256sum target/java-web-lab.war'
            }
        }
    }

    post {
        success {
            archiveArtifacts artifacts: 'target/java-web-lab.war', fingerprint: true
            echo 'Build concluído: WAR arquivado com sucesso.'
        }

        failure {
            echo 'Build falhou. Consulte as etapas anteriores no console.'
        }
    }
}
