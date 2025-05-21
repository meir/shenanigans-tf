
data discord_permission administrators {
  allow_extends = data.discord_permission.og.allow_bits
  deny_extends = data.discord_permission.og.deny_bits

  administrator = "allow"
  manage_guild = "allow"
  manage_roles = "allow"
  manage_channels = "allow"
  manage_webhooks = "allow"
}

data discord_permission moderator {
  allow_extends = data.discord_permission.og.allow_bits
  deny_extends = data.discord_permission.og.deny_bits

  ban_members = "allow"
  kick_members = "allow"
  manage_messages = "allow"
  manage_emojis = "allow"
  manage_nicknames = "allow"
  mention_everyone = "allow"
  priority_speaker = "allow"
  mute_members = "allow"
  deafen_members = "allow"
  move_members = "allow"
  view_guild_insights = "allow"
}

data discord_permission og {
  allow_extends = data.discord_permission.everyone.allow_bits
  deny_extends = data.discord_permission.everyone.deny_bits
  
  send_tts_messages = "allow"
  create_instant_invite = "allow"
}

data discord_permission everyone {
  administrator = "deny"
  manage_guild = "deny"
  manage_roles = "deny"
  ban_members = "deny"
  kick_members = "deny"
  manage_channels = "deny"
  manage_webhooks = "deny"
  manage_messages = "deny"
  manage_emojis = "deny"
  manage_nicknames = "deny"
  mention_everyone = "deny"
  priority_speaker = "deny"
  mute_members = "deny"
  deafen_members = "deny"
  move_members = "deny"
  send_tts_messages = "deny"
  view_guild_insights = "deny"
  create_instant_invite = "deny"

  view_audit_log = "allow"

  embed_links = "allow"
  stream = "allow"
  connect = "allow"
  speak = "allow"
  send_messages = "allow"
  read_message_history = "allow"
  attach_files = "allow"
  add_reactions = "allow"
  use_external_emojis = "allow"
  view_channel = "allow"
  change_nickname = "allow"
  use_vad = "allow"
}
