# get all resources in namespace
Get-AllResourcesInNamespace...
#
# get all pods on a node
kubectl get pods --all-namespaces --field-selector=spec.nodeName=<node-name>

kubectl get pods --all-namespaces --field-selector=status.phase!=Running

# run busybox
kubectl run -i --tty busybox --image=busybox --restart=Never -- sh

kubectl run -i --tty mssql-odbc --image=304333971729.dkr.ecr.eu-west-2.amazonaws.com/mssql-odbc:test --restart=Never -- sh

/opt/mssql-tools/bin/sqlcmd -S tcp:talbot-db.cxtjk4tx2qot.eu-west-2.rds.amazonaws.com,1433 -U airbox -P kMn9HWVznq5NPED5

# columns
kubectl get pods --output custom-columns=NAME:metadata.name

#### testing the kubernetes API
kubectl proxy --port=8080 &

curl http://localhost:8080/apis

list ingresses:
curl http://localhost:8080/apis/networking.k8s.io/v1/ingresses | out-file apis-networking.k8s.io-v1-ingresses.json