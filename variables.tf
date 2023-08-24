#
# NFS subdir provisioner
#

variable "server" {
  type        = string
  description = "The NFS server"
}

variable "mountOptions" {
  type        = string
  default     = "noatime,nodiratime,nconnect=16"
  description = "The NFS share mount options"
}

variable "path" {
  type        = string
  description = "The NFS share path"
}

variable "defaultStorageClass" {
  type        = bool
  description = "Configure this volume provisioner to be the default storage class"
  default     = true
}
