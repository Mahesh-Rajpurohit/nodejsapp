node{

     checkout scm
	
     docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
            
  	def customImage = docker.build("my-image:${env.BUILD_ID}")
	     
	customImage.push()
			
    } 
}
