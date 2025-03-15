pipeline{
	agent any
	environment{
		JAR_NAME = "spring-rest-simple-one-0.0.1-SNAPSHOT.jar"
		IMAGE_NAME = "spring-docker-demo"
		CONTAINER_NAME = "spring-socker-demo-container"
	}
	stages{
		stage("Checkout"){
			steps{
				git branch:'master',
				url: 'https://github.com/amaanshaik20/spring-rest-simple-one.git'
			}
		}
		stage('Build'){
			steps{
				bat 'mvn clean package'
			}
		}
		stage('Build Docker Image'){
			steps{
				bat """ docker build -t %IMAGE_NAME% ."""
			}
		}
		stage('Deploy'){
			steps{
				bat """docker stop %CONTAINER_NAME% || exit 0 docker rm %CONTAINER_NAME% || exit 0"""
				bat """docker run -d -p 9099:9099 --name %CONTAINER_NAME% %IMAGE_NAME%"""
			}
		}
	}
	post{
		success{
			echo 'build and deployment success'
		}
		failure{
			echo 'build failed!'
		}
	}
}
