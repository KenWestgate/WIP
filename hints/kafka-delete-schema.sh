schemaRegistryUrl="schema-registry-cp-schema-registry:8081"
curl ${schemaRegistryUrl}/subjects

schemaToDelete="airbox.qa.asset-management.cmd.modify-asset-referenceassets.0-value"
curl -X DELETE $schemaRegistryUrl/subjects/$schemaToDelete