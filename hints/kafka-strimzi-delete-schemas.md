# strimzi

abx-eks cluster, kafka-cluster namespace


# to delete schemas, set this value, delete the topics and then the schemas, then set it back to true
Edit the Kafka CRD
auto.create.topics.enable=false

connect to the abx-cluster-entity operator pod

# list the schemas
curl http://abx-schema-registry:8081/schemas/list

#delete the schemas
curl -X DELETE  http://abx-schema-registry:8081/subjects/airbox.grimaldi.video-manager.event.user-added-new-stream.0-value
curl -X DELETE  http://abx-schema-registry:8081/subjects/airbox.grimaldi.video-manager.event.user-added-new-stream.0-value?permanent=true

