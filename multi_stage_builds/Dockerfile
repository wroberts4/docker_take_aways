ARG ENV_NAME=env

FROM condaforge/mambaforge:4.12.0-0 as environment
RUN mamba install -y --strict-channel-priority -c conda-forge conda-pack
ARG ENV_NAME

RUN mamba create -y -n ${ENV_NAME}

RUN conda-pack -n ${ENV_NAME} -o /${ENV_NAME}.tar
RUN mkdir /${ENV_NAME}
RUN cd /${ENV_NAME} && tar xf /${ENV_NAME}.tar
RUN /${ENV_NAME}/bin/conda-unpack

RUN mamba install -y -p /${ENV_NAME} python xarray


FROM debian:bullseye-slim as test
ARG ENV_NAME

COPY --from=environment /$ENV_NAME /$ENV_NAME

RUN echo "source /${ENV_NAME}/bin/activate" > ~/.bashrc
SHELL ["bash", "--login", "-c"]
# Without the above SHELL, you would do need do: bash --login -c "pip install dask"
RUN pip install dask

# Without an entrypoint, commands passed directly to docker run would not have an active environment
RUN echo 'exec "$@"' > /entrypoint.sh
# --login runs ~/.bashrc which sources /env
ENTRYPOINT ["bash", "--login", "/entrypoint.sh"]

ONBUILD COPY current_time.txt /current_time.txt
