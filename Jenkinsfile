node{

     checkout scm
	
     docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
        
	echo "pushing image"
	     
  	def customImage = docker.build("9535236403/nodeapp")
	     
	customImage.push()
			
    } 
}
