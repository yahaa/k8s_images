KUBE_V="v1.10.0"
ETCD_V="3.1.12"
PAUSE_V="3.1"
DASHBOARD_V="v1.8.3"
DNS_V="1.14.8"

images=(kube-proxy-amd64:$KUBE_V \
        kube-scheduler-amd64:$KUBE_V \
        kube-controller-manager-amd64:$KUBE_V \
        kube-apiserver-amd64:$KUBE_V \
        etcd-amd64:$ETCD_V \
        pause-amd64:$PAUSE_V \
        kubernetes-dashboard-amd64:$DASHBOARD_V \
        k8s-dns-sidecar-amd64:$DNS_V \
        k8s-dns-kube-dns-amd64:$DNS_V \
        k8s-dns-dnsmasq-nanny-amd64:$DNS_V)

for imageName in ${images[@]} ; do
  docker pull yzihua/$imageName
  docker tag yzihua/$imageName k8s.gcr.io/$imageName
  docker rmi yzihua/$imageName 
done