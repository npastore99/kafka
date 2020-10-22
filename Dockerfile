FROM ubuntu:latest

ENV KAFKA_HOME /opt/kafka
ENV KAFKA_USER kafka 
WORKDIR /opt
ADD C:/Users/N.Pastore/kafka/start-kafka.sh C:/Desktop/test/

# install java + others
 RUN apt-get update  && apt-get install -y \

 wget \

 openjdk-8-jre

    #Kafak port
EXPOSE 9092  \
    #Zookeeper port
    2888 \
    #Zookeeper port 
    3888 

# install kafka

 RUN wget http://mirror.nohup.it/apache/kafka/2.4.0/kafka_2.12-2.4.0.tgz && \

 tar -xvzf kafka_2.12-2.4.0.tgz  &&  \

 mv kafka_2.12-2.4.0 $KAFKA_HOME

ENTRYPOINT [ "start-kafka.sh" ]
CMD ["C:/Users/N.Pastore/kafka/start-kafka.sh"]
