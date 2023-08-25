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
| <a name="input_default_storage_class"></a> [default\_storage\_class](#input\_default\_storage\_class) | Configure this volume provisioner to be the default storage class | `bool` | `true` | no |
| <a name="input_nfs_mount_options"></a> [nfs\_mount\_options](#input\_nfs\_mount\_options) | The NFS share mount options | `list(string)` | <pre>[<br>  "noatime",<br>  "nodiratime",<br>  "nconnect=16"<br>]</pre> | no |
| <a name="input_nfs_path"></a> [nfs\_path](#input\_nfs\_path) | The NFS share path | `string` | n/a | yes |
| <a name="input_nfs_server"></a> [nfs\_server](#input\_nfs\_server) | The NFS server | `string` | n/a | yes |
<!-- END_TF_DOCS -->
