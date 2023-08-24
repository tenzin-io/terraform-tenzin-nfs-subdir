#
# NFS subdir provisioner
#

resource "helm_release" "nfs_subdir" {
  name             = "nfs-subdir"
  repository       = "https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner"
  chart            = "nfs-subdir-external-provisioner"
  version          = "4.0.18"
  namespace        = "nfs-subdir"
  create_namespace = true

  set {
    name  = "nfs.server"
    value = var.server
  }

  set {
    name  = "nfs.path"
    value = var.path
  }

  set {
    name  = "nfs.mountOptions"
    value = "{${var.mountOptions}}"
  }

  set {
    name  = "storageClass.defaultClass"
    value = var.defaultStorageClass
  }
}

