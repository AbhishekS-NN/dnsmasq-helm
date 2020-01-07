Helm chart for hosting dnsmasq on a Kubernetes cluster. 

The docker image for dnsmasq will be present in dockerhub(abhiss/dnsmasq:<tag>). 
     
User can also build build the dnsmasq Docker locally using the following steps:
- Clone the repo and cd to dnsmasq-helm directory
- Run the command:
     ``` docker build . -t dns:dnsmasq --build-arg HTTP_PROXY=$http_proxy --build-arg HTTPS_PROXY=$https_proxy --rm --file Dockerfile ```

NOTE: Docker name:tag can be changed in the above command by replacing 'dns:dnsmasq' with the custom name.

Installing Helm chart
- Use the image from dockerhub or Build the docker as mentioned above
- Go to dnsmasq-helm/dnsmasq directory
- Open the values.yaml with any of the editors
- If the docker name:tag is changed, update the same in image and tag sections (by default image:abhiss/dnsmasq tag:v1.0)
- Add the IP to which the dnsmasq service has to be exposed to in the ip section
- Run the command:
     ``` helm install ```
