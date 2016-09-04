do
local function run(msg, matches)
  local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
local markdown = '*☺️🍃 Hi, *['..msg.from.first_name..']('..user..')'
if matches[1] == 'echo' then
local echo = markdown.."\n\n*"..matches[2].."*"
send_markdown(msg, get_receiver_api(msg), echo, true, 'md')
end
end
return {
  patterns = {
    "^[/!#](echo) (.+)$"
  }, 
  run = run 
}
end
