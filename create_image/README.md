Here are basic examples of how to make Docker images.
Dockerhub has countless pre-built images of almost any software you can imagine.
All you have to do is google "dockerhub software_name_here"
In these examples, I will showcase just a handfull of them.

General information
-------------------

- Mount local directories using the `-v` flag
- Set environment variables for the container using the `-e` flag

hello_world
-----------
Make a bear-bones Docker image based off CentOS 7: hello_world/go.sh

jupyterlab
----------

Start a jupyterlab instance with a single command: jupyterlab/go.sh

Useful tricks:

- Build the image with pre-made notebooks so that all users start with "example_notebooks". Furthermore, users can alter these notebooks inside the container without altering it in other/future containers.
- Mount a volume or local directory to "saved_notebooks" that will persist between containers.

nginx
-----

Start and nginx server for hosting a website or doing a reverse-proxy: nginx/go.sh

java
----

Download a minecraft server and play minecraft inside a Docker container: java/go.sh

docker:dind
-----------

Run Docker inside Docker. Be careful with this, as it has some weird querks: docker_in_docker/go.sh


Gotchyas
--------

- Some systems may have a file descriptor limit. You can chaneg that by using the flag `--ulimit nofile=10000:10000`. The default is 1024.
- Note that when you specify an image name, most systems will defualt to looking in "docker.io/library", which is the dockerhub registry
