FROM samis/dreamdaemon
USER root
ENV DM_MAPFILE="metastation"
RUN apt-get -y install git-core
RUN mkdir world; chown dreamdaemon world;
USER dreamdaemon
RUN git clone --depth 5 https://github.com/tgstation/-tg-station.git world
WORKDIR /world/code/
RUN sed -i 's/USE_BYGEX/DO_NOT_USE_BYGEX/' _compile_options.dm
WORKDIR /world/
RUN bash dm.sh -M${DM_MAPFILE} tgstation.dme && ln -s tgstation.dmb world.dmb
VOLUME /world/config /world/data
