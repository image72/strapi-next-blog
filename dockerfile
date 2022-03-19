FROM node:14-buster
WORKDIR /backend
ENV NODE_ENV production
RUN apt update && apt-get -y install libvips-dev
RUN apt-get -y install glib2.0-dev expat gobject-introspection libgtk2.0-doc
RUN wget https://github.com/libvips/libvips/releases/download/v8.10.6-beta/vips-8.10.6.tar.gz
RUN tar xf vips-8.10.6.tar.gz
RUN cd vips-8.10.6 && ./configure && make && make install && rm -rf vips-8.10.6
RUN yarn config set network-timeout 600000 && yarn
EXPOSE 1337
CMD [ "yarn", "start" ]
