# k8s_images
> kubeadm 创建 k8s 集群时需要到的一些镜像的缓存。

### 关于版本

```bash
KUBE_V="v1.10.0"
ETCD_V="3.1.12"
PAUSE_V="3.1"
DASHBOARD_V="v1.8.3"
DNS_V="1.14.8"
```

> 版本信息来自 kubeadm 工具生成的 .yaml 文件,k8s不同版本需要的镜像不一样。

#### 关于获取镜像

```bash
git clone git@github.com:yahaa/k8s_images.git
cd k8s_images
chmod +x k8s_pull.sh
./k8s_pull.sh
```
> 注: master 分支默认自动同步 k8s 最新的镜像版本
