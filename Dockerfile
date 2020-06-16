FROM ubuntu:16.04
RUN apt update -y && \
	apt install -y build-essential libpcre3 libpcre3-dev libssl-dev wget unzip && \
	wget http://nginx.org/download/nginx-1.12.2.tar.gz && \
	wget -O nginx-rtmp-module-master.zip https://codeload.github.com/arut/nginx-rtmp-module/zip/master && \
	tar -zxf nginx-1.12.2.tar.gz && \
	unzip nginx-rtmp-module-master.zip && \
	cd nginx-1.12.2 && \
	./configure --add-module=/nginx-rtmp-module-master && \
	make && \
	make install && \
	cd / && \
	rm -rf nginx-*

COPY nginx.conf /usr/local/nginx/conf/nginx.conf
COPY run.sh /run.sh

EXPOSE 80
EXPOSE 1935

CMD sh /run.sh
