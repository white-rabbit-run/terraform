locals {
  now     = timestamp()
  sa_tz   = timeadd(local.now, "2h")
  date_sa = formatdate("DD MMM YYYY hh:mm", local.sa_tz)


  common_tags = {
    Service      = var.service_name
    Owner        = var.owner_name
    Last-Updated = local.date_sa
  }
}