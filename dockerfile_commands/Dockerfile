# Set the --build-arg variable. Example: docker build -t my_image --build-arg VERSION=3.0.1 ${PWD}
ARG VERSION

FROM centos:7
# This is needed to bring the global ARG into the scope of this stage.
ARG VERSION
# $VERSION here is the ARG variable, not the ENV variable.
LABEL version=${VERSION}
# Make VERSION available to containers in the environment.
ENV VERSION=${VERSION}
# Copy the entrypoint.sh from disk to the image.
COPY entrypoint.sh /entrypoint.sh
# Create the user to run containers as.
RUN useradd --create-home -u 1000 user1
# Set the working directory to /home/user1
WORKDIR /home/user1
# Set the runtime user as suer1
USER user1
# Wrap all input around an entrypoint script.
ENTRYPOINT ["bash", "/entrypoint.sh"]
# If no input is provided, run "pwd".
CMD ["pwd"]
