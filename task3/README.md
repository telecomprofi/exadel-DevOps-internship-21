# Task3 consists of
* installation of docker engine on AWS EC2 instance
* extra task: installation of docker engine with bash script
* [docker-ce-install.sh] (https://github.com/telecomprofi/exadel-DevOps-internship-21/blob/634f022093d60813a7f9fcc5c91dda6a91f6caae/task3/docker-ce-install.sh)
* Creaitng Dockerhub autobuid on repo push (Github -> Dockerhub)
* Creating Docker Compose for 5 containers, web, java, db
* deploying compise to VM


## Task3 Result:
   * EC2 instance1: Ubuntu Linux with docker engine & running container [EC2 url] (http://telecomprofi.xyz/index.html)
   * Dockerhub public image [telecomprofi/sandbox2021] (https://hub.docker.com/r/telecomprofi/sandbox2021/)
   * usage 
<pre><code>
docker pull docker pull telecomprofi/sandbox2021:v2 
docker run -d -p 80:80  -e DEVOPS=<your name goes here>   
</code></pre>
   * Docker compose dir containing web, db, java subdirs with respective Dockerfiles[DockerCompose] (https://github.com/telecomprofi/exadel-DevOps-internship-21/blob/634f022093d60813a7f9fcc5c91dda6a91f6caae/task3/DockerCompose/) - Work in progress
### extra tasks:
3.x 
3.x
3.x

### Result Extra 3.x 
  * [telecomprofi/sandbox2021] (https://hub.docker.com/r/telecomprofi/sandbox2021/)
  *  Docker compose - work in progress
