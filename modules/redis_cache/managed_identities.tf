locals {
  managed_local_identities = flatten([
    for managed_identity_key in try(var.redis.identity.managed_identity_keys, []) : [
      var.managed_identities[var.client_config.landingzone_key][managed_identity_key].id
    ]
  ])

  managed_remote_identities = flatten([
    for lz_key, value in try(var.redis.identity.remote, []) : [
      for managed_identity_key in value.managed_identity_keys : [
        var.managed_identities[lz_key][managed_identity_key].id
      ]
    ]
  ])

  provided_identities = try(var.redis.identity.managed_identity_ids, [])

  managed_identities = concat(local.provided_identities, local.managed_local_identities, local.managed_remote_identities)
}
