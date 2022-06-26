cd ~/ &&
apk add bash &&
wget https://dot.net/v1/dotnet-install.sh &&
chmod +x dotnet-install.sh &&
./dotnet-install.sh -c 5.0 &&
/root/.dotnet/dotnet tool install --global dotnet-counters &&
/root/.dotnet/dotnet tool install --global dotnet-dump

=========================================================

/root/.dotnet/tools/dotnet-counters monitor -p 1 --refresh-interval 5 --counters System.Runtime

=========================================================

/root/.dotnet/tools/dotnet-dump collect -p 1

=========================================================

$podName = "asset-manager-7859b87745-mtmnj"
$fileName = "/root/core_20220325_160707"
kubectl cp "$($podName):$($fileName) .$fileName --namespace platform-common