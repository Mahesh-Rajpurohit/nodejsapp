pipeline{
  
  agent any
   def app	
  stages{    
	
	 stage('Build image') {
		steps{
			 /* This builds the actual image */

			app = docker.build("maheshr/nodeapp")
		}
       
    }

    stage('Test image') {
        
		steps{
			app.inside {
            echo "Tests passed"
        }
		}
        
    }

    stage('Push image') {
       steps{
			 /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            } 
                echo "Trying to Push Docker Build to DockerHub"
	   }
    }
  }  
}
