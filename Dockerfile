FROM samis/dreamdaemon
USER root
RUN apt-get -y install git-core
USER dreamdaemon
RUN git clone git@github.com:tgstation/-tg-station.git game
WORKDIR /game/code/
RUN sed 's/USE_BYGEX/DO_NOT_USE_BYGEX' _compile_options.dm
WORKDIR /game/code
RUN DreamMaker tgstation.dme && ln -s tgstation.dmb world.dmb
VOLUME /game/config /game/data