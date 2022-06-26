Param (
    [Parameter(Mandatory=$true)]$nodeName
)
kubectl get pods --all-namespaces `
    -o custom-columns=NAMESPACE:metadata.namespace,POD:metadata.name,PodIP:status.podIP,STATE:status.containerStatuses[*].state.waiting.reason | select-string $nodeName