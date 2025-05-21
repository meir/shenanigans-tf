
resource discord_role administrator {
  server_id = discord_server.shenanigans.id
  name = "Admin"
  permissions = data.discord_permission.administrators.allow_bits
  hoist = true
  mentionable = true
  position = 1
}

resource discord_role moderator {
  server_id = discord_server.shenanigans.id
  name = "Mod"
  permissions = data.discord_permission.moderator.allow_bits
  hoist = true
  mentionable = true
  position = 2
}

resource discord_role og {
  server_id = discord_server.shenanigans.id
  name = "OG"
  permissions = data.discord_permission.og.allow_bits
  hoist = false
  mentionable = true
  position = 3
}

resource discord_role everyone {
  server_id = discord_server.shenanigans.id
  name = "@everyone"
  permissions = data.discord_permission.everyone.allow_bits
  hoist = false
  mentionable = false
  position = 4
}
