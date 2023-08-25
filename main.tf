#
# NFS subdir provisioner
#

resource "helm_release" "nfs_subdir" {
  name             = "nfs-subdir"
  repository       = "https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner"
  chart            = "nfs-subdir-external-provisioner"
  version          = "4.0.18"
  namespace        = "nfs-subdir"
  force_update     = true
  create_namespace = true

  values = [templatefile("${path.module}/templates/values.yaml", {
    nfs_server            = var.nfs_server
    nfs_path              = var.nfs_path
    nfs_mount_options     = var.nfs_mount_options
    default_storage_class = var.default_storage_class
  })]
}

