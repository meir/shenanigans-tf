
resource discord_role administrator {
  server_id = discord_server.shenanigans.id
  name = "Admin"
  color = 15548997
  permissions = data.discord_permission.administrators.allow_bits
  hoist = true
  mentionable = true
  position = 1
}

resource discord_role moderator {
  server_id = discord_server.shenanigans.id
  name = "Mod"
  color = 7419530
  permissions = data.discord_permission.moderator.allow_bits
  hoist = true
  mentionable = true
  position = 2
}

resource discord_role og {
  server_id = discord_server.shenanigans.id
  name = "OG"
  color = 15844367
  permissions = data.discord_permission.og.allow_bits
  hoist = false
  mentionable = true
  position = 3
}

resource discord_role_everyone everyone {
  server_id = discord_server.shenanigans.id
  permissions = data.discord_permission.everyone.allow_bits
}

variable levels {
  type = list(string)
  default = [
    "Level 5",
    "Level 10",
    "Level 15",
    "Level 20",
    "Level 25",
    "Level 30",
    "Level 35",
    "Level 40",
    "Level 45",
    "Level 50",
    "Level 55",
    "Level 60",
    "Level 65",
    "Level 69",
    "Level 70",
    "Level 75"
  ]
}

resource random_integer level_color {
  for_each = toset(var.levels)
  min = 0
  max = 16777215
}

resource discord_role levels {
  for_each = toset(var.levels)
  server_id = discord_server.shenanigans.id
  name = each.key
  color = random_integer.level_color[each.key].result
  hoist = false
  mentionable = false
}
