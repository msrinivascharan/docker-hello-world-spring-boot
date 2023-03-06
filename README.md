Containarizing and deploying Spring boot app to Kubernetes cluster.

#### Prerequisite 

Installed on Windows 11:   
Docker desktop
Kubernetes single node cluster
Java and Maven
Git
Jenkins
helm

#### Steps

CI pipeline created in Jenkins to build Hello World app with below tasks.

1] Checkout
2] maven clean
3] maven test
4] maven package
5] build image using docker
6] Publish image to Docker Hub
7] Pull image from Docker Hub and deploy to Kubernetes cluster using helm chart
