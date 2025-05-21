
resource discord_member_roles FallZone {
  user_id = "540184360641626112"
  server_id = discord_server.shenanigans.id
  role {
    role_id = discord_role.administrator.id
  }
  role {
    role_id = discord_role.og.id
  }
}

resource discord_member_roles Riley {
  user_id = "336569261596344331"
  server_id = discord_server.shenanigans.id
  role {
    role_id = discord_role.administrator.id
  }
  role {
    role_id = discord_role.og.id
  }
}

resource discord_member_roles Human {
  user_id = "213603030384377856"
  server_id = discord_server.shenanigans.id
  role {
    role_id = discord_role.administrator.id
  }
  role {
    role_id = discord_role.og.id
  }
}

resource discord_member_roles Tiny {
  user_id = "231045294035435520"
  server_id = discord_server.shenanigans.id
  role {
    role_id = discord_role.moderator.id
  }
  role {
    role_id = discord_role.og.id
  }
}

resource discord_member_roles Creathing {
  user_id = "456116020713750528"
  server_id = discord_server.shenanigans.id
  role {
    role_id = discord_role.moderator.id
  }
  role {
    role_id = discord_role.og.id
  }
}

variable OGs {
  type = list(string)
  default = [
    "339014309264752650", # Shadow
    "266446496092782592", # Envi
    "336493656615682052", # Jan
    "1274140144139767870", # Maygan
    "239791268501127178", # Meeps
    "320287912916680724", # Mittenz
    "785642740142178328" # Rac
  ]
}

resource discord_member_roles ogs {
  for_each = toset(var.OGs)
  user_id = each.value
  server_id = discord_server.shenanigans.id
  role {
    role_id = discord_role.og.id
  }
}

