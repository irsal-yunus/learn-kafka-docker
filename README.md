# learn-kafka-docker
learn kafka docker

# build image docker
docker build . -t kafka:2.5.0

# run container kafka
docker run -d --name kafka-broker kafka:2.5.0

# check logs container docker
docker logs -f kafka-broker

# create topic kafka
docker run --rm -it --link kafka-broker --name temp kafka:2.5.0 bin/kafka-topic.sh --bootstrap-server kafka-broker:9092 --topic dotslashrun
docker run --rm -it --link kafka-broker --name temp kafka:2.5.0 bin/kafka-topic.sh --bootstrap-server kafka-broker:9092 --topic test-topic
# check list topic in kafka
docker run --rm -it --link kafka-broker --name temp kafka:2.5.0 bin/kafka-topic.sh --list --bootstrap-server kafka-broker:9092

# create kafka producer
docker run --rm -it --link kafka-broker --name producer kafka:2.5.0 bin/kafka-console-producer.sh --bootstrap-server kafka-broker:9092 --topic dotslashrun
# create kafka consumer
docker run --rm -it --link kafka-broker --name consumer kafka:2.5.0 bin/kafka-console-consumer.sh --bootstrap-server kafka-broker:9092 --topic dotslashrun --from-beginning
