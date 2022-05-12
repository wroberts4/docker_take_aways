Overview
--------

This github repository is the homebase of all the cool and/or useful docker and containerization tools I have learned.
It is a braindump that is still being added to and refined.
Each directory contains a README that gives more specific insight into each example set along with subsirectories with
Dockerfiles and shell scripts.

Brief introduction to Docker
----------------------------

Docker is an open platform for creating application "images", and running said application images in "containers".
Docker makes it trivial to run software between systems and environments; if you have Docker, you can run the software!
Personally, Docker is my favorite and most used development tool because allows me to save lots of time and effort in both
development and deployment. Similar to how virtual environments (anaconda/mamba) simplifies package management and deployment,
Docker simplifies system and application management and deployment.

Use and Create a docker image
---------------------

Basic example on how to use and create images: use_and_create_image/

Use multistage builds
---------------------

Examples on how to create Docker image using multiple stages, and why you should use them: multi_stage_builds/

Image deployed to gitlab registry
---------------------------------

Examples on how to deploy a build image to a gitlab registry: deploy_to_registry/

Docker registry image: gitlab.ssec.wisc.edu:5555/aeri/aeri_armory/docker_demo

Slide Show
----------

Docker_Takeaways.pdf

Maintainer
----------

name: Will Roberts

organization: Space Science and Engineering Center at University of Wisconsin Madison

email: wroberts4@wisc.edu

Please feel free to contact me with an questions or discussion!
