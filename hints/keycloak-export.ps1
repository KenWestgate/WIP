kubectl get pods --all-namespaces `
    -o custom-columns=NAMESPACE:metadata.namespace,POD:metadata.name,PodIP:status.podIP,STATE:status.containerStatuses[*].state.waiting.reason | grep ImagePullBackOff

$namespace = "grimaldi"
$response = kubectl get pods --namespace $namespace -o json | ConvertFrom-Json -Depth 50
$pods = $response.items

$keycloak = $pods | Where-Object { $_.metadata.name -like "*keycloak*" }

Write-Host $keycloak.metadata.name

kubectl exec -it $keycloak.metadata.name --namespace $namespace -- sh

# kubectl exec -it $keycloak.metadata.name --namespace $namespace -- `
# /opt/jboss/keycloak/bin/standalone.sh -Dkeycloak.migration.action=export -Dkeycloak.migration.provider=singleFile -Dkeycloak.migration.realmName=Grimaldi -Dkeycloak.migration.usersExportStrategy=REALM_FILE -Dkeycloak.migration.file=/tmp/grimaldi-realm.json