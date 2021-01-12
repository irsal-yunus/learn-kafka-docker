FROM openjdk
RUN cd /opt && curl -OL https://downloads.apache.org/kafka/2.7.0/kafka_2.12-2.7.0.tgz && tar -zxvf kafka_2.12-2.7.0.tgz && rm kafka_2.12-2.7.0.tgz
WORKDIR /opt/kafka_2.12-2.7.0/
COPY start.sh /opt/kafka_2.12-2.7.0/
CMD ["./start.sh"]
