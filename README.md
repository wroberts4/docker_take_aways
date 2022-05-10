Overview
--------

This github repository is the homebase of all the cool and/or useful docker and containerization tools I have learned.
Each directory contains a README that gives more specific insight into each example set along with subsirectories with
Dockerfiles and shell scripts.

Brief introduction to Docker
----------------------------

Docker is an open platform for creating application "images", and running said application images in "containers".
Docker makes it trivial to run software between systems and environments; if you have Docker, you can run the software!
Personally, Docker is my favorite and most used development tool because allows me to save lots of time and effort in both
development and deployment. Similar to how virtual environments (anaconda/mamba) simplifies package management and deployment,
Docker simplifies system and application management and deployment.

Create a docker image
---------------------

Basic example on how to create images: create_image/

Use multistage builds
---------------------

Examples on how to create Docker image using multiple stages, and why you should use them: multi_stage_builds/

Image deployed to gitlab registry
---------------------------------

Docker registry image: gitlab.ssec.wisc.edu:5555/aeri/aeri_armory/docker_demo

Slide Show
----------

Docker_Takeaways.pdf
