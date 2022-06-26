# Install flux
$clusterName = "tf-staging-archimedes"
$creds = Get-Credentials -Target GitHubApi
$env:GITHUB_TOKEN = ConvertFrom-SecureString $creds.Password -AsPlainText
flux bootstrap github `
    --owner=AirboxSystems `
    --repository=flux-infrastructure-pre-production `
    --path=clusters/$clusterName

# testing the kubernetes API
~~~
kubectl proxy --port=8080 &
~~~

## get the list of APIs
~~~
curl http://localhost:8080/apis
~~~

## list source api calls:
~~~
curl http://localhost:8080/apis/source.toolkit.fluxcd.io/v1beta2 | out-file source.toolkit.fluxcd.io_v1beta2.json
~~~

## list helmrepositories
~~~
curl http://localhost:8080/apis/source.toolkit.fluxcd.io/v1beta2/helmrepositories | out-file source.toolkit.fluxcd.io_v1beta2_helmrepositories.json
~~~

## list helmcharts
**from (ubuntu) pod in cluster:**
~~~
curl http://localhost:8080/apis/source.toolkit.fluxcd.io/v1beta2/helmcharts | out-file source.toolkit.fluxcd.io_v1beta2_helmcharts.json
~~~

## list helmcharts/status
~~~
curl http://localhost:8080/apis/source.toolkit.fluxcd.io/v1beta2/helmchart/status | out-file source.toolkit.fluxcd.io_v1beta2_helmcharts_status.json
~~~
