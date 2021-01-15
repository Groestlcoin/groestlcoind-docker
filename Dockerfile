FROM ubuntu:bionic

COPY /install-groestlcoincore.sh /root/
RUN /bin/bash /root/install-groestlcoincore.sh

EXPOSE 1441 1331

COPY start-groestlcoincore /root/
RUN chmod +x /root/start-groestlcoincore
CMD ["/root/start-groestlcoincore"]
