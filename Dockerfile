FROM debian:latest
RUN useradd -U -u 10000 -m -d /inspircd inspircd
RUN apt-get update
RUN apt-get install -y inspircd
RUN apt-get install -y netcat
RUN chown inspircd:inspircd /etc/inspircd
RUN mkdir /var/run/inspircd
RUN chown inspircd:inspircd /var/run/inspircd
RUN sed -i 's/^<bind address="127.0.0.1"/<bind/' /etc/inspircd/inspircd.conf
RUN sed -i '/^<connect.*/a resolvehostnames="no"' /etc/inspircd/inspircd.conf
EXPOSE 6667 6697 7000 7001
HEALTHCHECK --interval=60s CMD /bin/nc -z localhost 6667
USER inspircd
CMD ["/usr/sbin/inspircd", "--nofork", "--nolog"]
