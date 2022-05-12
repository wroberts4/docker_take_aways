The suggested and secure way to run Docker containers is as a non-root user.

Currently when you map a local directory on linux systems, it is always mapped to the root user inside the container. This causes permission issues. The workaround is to use Docker volumes, object storage, or enable the docker daemon flag “--userns-remap” and “--userns=host”. Non linux Docker is more secure when it comes to UID mapping, but it is still best practice to run as non-root
