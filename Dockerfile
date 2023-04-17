# WIP...

ROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils build-essential sudo git luajit luarocks libssl-dev net-tools iputils-ping vim
RUN git config --global http.sslverify false
#RUN luarocks install turbo
RUN git clone --depth 1 --branch v2.1.2 https://github.com/kernelsauce/turbo.git && cd turbo && make install
