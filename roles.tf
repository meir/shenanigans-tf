
locals {
  levels = [
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
    "Level 70",
    "Level 75",
    "Level 80",
    "Level 85",
    "Level 90",
    "Level 95",
    "MAX LEVEL"
  ]

  list_top = length(local.levels)

  position_og = local.list_top + 1
  position_moderator = local.position_og + 1
  position_administrator = local.position_moderator + 1
}

resource discord_role administrator {
  server_id = discord_server.shenanigans.id
  name = "Admin"
  color = 15548997
  permissions = data.discord_permission.administrators.allow_bits
  hoist = true
  mentionable = true
  position = local.position_administrator
}

resource discord_role moderator {
  server_id = discord_server.shenanigans.id
  name = "Mod"
  color = 7419530
  permissions = data.discord_permission.moderator.allow_bits
  hoist = true
  mentionable = true
  position = local.position_moderator
}

resource discord_role og {
  server_id = discord_server.shenanigans.id
  name = "OG"
  color = 15844367
  permissions = data.discord_permission.og.allow_bits
  hoist = false
  mentionable = true
  position = local.position_og
}

resource random_integer level_color {
  for_each = toset(local.levels)
  min = 0
  max = 16777215
}

resource discord_role levels {
  for_each = toset(local.levels)
  server_id = discord_server.shenanigans.id
  name = each.key
  color = random_integer.level_color[each.key].result
  hoist = false
  mentionable = false
  position = index(local.levels, each.key) + 1
}

resource discord_role_everyone everyone {
  server_id = discord_server.shenanigans.id
  permissions = data.discord_permission.everyone.allow_bits
}
