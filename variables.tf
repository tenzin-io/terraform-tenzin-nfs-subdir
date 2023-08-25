#
# NFS subdir provisioner
#

variable "nfs_server" {
  type        = string
  description = "The NFS server"
}

variable "nfs_mount_options" {
  type        = list(string)
  default     = ["noatime", "nodiratime", "nconnect=16"]
  description = "The NFS share mount options"
}

variable "nfs_path" {
  type        = string
  description = "The NFS share path"
}

variable "default_storage_class" {
  type        = bool
  description = "Configure this volume provisioner to be the default storage class"
  default     = true
}
