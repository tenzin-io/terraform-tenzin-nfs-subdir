# README
The Helm repo chart can be found here:
- <https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner/tree/master/charts/nfs-subdir-external-provisioner>

<!-- BEGIN_TF_DOCS -->


## Resources

| Name | Type |
|------|------|
| [helm_release.nfs_subdir](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_defaultStorageClass"></a> [defaultStorageClass](#input\_defaultStorageClass) | Configure this volume provisioner to be the default storage class | `bool` | `true` | no |
| <a name="input_mountOptions"></a> [mountOptions](#input\_mountOptions) | The NFS share mount options | `string` | `"noatime,nodiratime,nconnect=16"` | no |
| <a name="input_path"></a> [path](#input\_path) | The NFS share path | `string` | n/a | yes |
| <a name="input_server"></a> [server](#input\_server) | The NFS server | `string` | n/a | yes |
<!-- END_TF_DOCS -->
