FROM nginx

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY hello_part_4.c /
COPY start_part_4.sh /

RUN apt-get update &&  \
    apt-get install -y gcc spawn-fcgi libfcgi-dev && \ 
    gcc hello_part_4.c -o hello -l fcgi && \
    chmod +x /start_part_4.sh

ENTRYPOINT ["./start_part_4.sh"]
