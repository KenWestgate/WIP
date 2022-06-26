#!/bin/bash
# https://sparkbyexamples.com/kafka/kafka-delete-topic/#delete-topic
# exec to testclient pod in kafka namespace

zookeeper="abx-cluster-zookeeper-nodes.kafka-cluster.svc.cluster.local:2181"
# zookeeper="airbox-kafka-zookeeper-headless.kafka:2181"
# zookeeper="abx-cluster-zookeeper-client:2181"

topics=`bin/kafka-topics.sh --list --zookeeper ${zookeeper} | grep airbox`
for topic in $topics; do
    echo "${topic}"
    # bin/kafka-topics.sh --zookeeper ${zookeeper} --describe --topic ${topic}
done

# not necessary in current version of kafka
# for topic in $topics; do
#     bin/kafka-configs.sh --zookeeper ${zookeeper} --entity-name ${topic} --entity-type topics --describe
# done

# for topic in $topics; do
#     bin/kafka-configs.sh --zookeeper ${zookeeper} --entity-name ${topic} --entity-type topics --alter --add-config delete.topic.enable=true
# done

for topic in $topics; do
    bin/kafka-topics.sh  --delete --zookeeper ${zookeeper} --topic "${topic}"
done

####
bin/kafka-topics.sh  --delete --zookeeper ${zookeeper} --topic airbox.qa.alert-management.event.airbox-generic-alert-received.0
bin/kafka-topics.sh  --delete --zookeeper ${zookeeper} --topic airbox.qa.asset-management.event.generic-asset-data-received.0
bin/kafka-topics.sh  --delete --zookeeper ${zookeeper} --topic airbox.qa.asset-management.event.mod-chubb-asset-data-received.0
bin/kafka-topics.sh  --delete --zookeeper ${zookeeper} --topic airbox.qa.icon-management.cmd.get-types-by-org-id.0
bin/kafka-topics.sh  --delete --zookeeper ${zookeeper} --topic airbox.qa.location-management.cmd.create-asset-location-data.0
bin/kafka-topics.sh  --delete --zookeeper ${zookeeper} --topic airbox.qa.location-management.event.location-data-received.0
