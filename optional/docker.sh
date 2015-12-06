#!/usr/bin/env bash

sudo apt-get install -y curl
sudo curl -sSL https://get.docker.com | sh
sudo usermod -aG docker garrett

printf "#!/bin/bash\ndocker rm $(docker ps -a -q)" > ~/bin/docker_remove_stopped_containers
chmod +x ~/bin/docker_remove_stopped_containers
printf "#!/bin/bash\ndocker rmi $(docker images | grep \"^<none>\" | awk \"{print $3}\")" > ~/bin/docker_remove_untagged_images
chmod +x ~/bin/docker_remove_untagged_images
