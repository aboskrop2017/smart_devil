do 
function run(msg, matches)
local data = load_data(_config.moderation.data)
local group_link = data[tostring(msg.to.id)]['settings']['set_link']
local ch = 'https://telegram.me/api_cli'
local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
local data = '* '..os.date('%x:%X\n*')
local id = 'id'..msg.from.id
local markdown = '**['..msg.from.first_name..']('..user..')'
local cha = '[۰۪۫C۪۫۰۰۪۫H۪۫۰💻]('..ch..')'
local help = "*NAME* : "..markdown.."\n*USER* : `"..(msg.from.username or "NO USER").."`\n*ID* : `"..msg.from.id.."`\n*GP NAME * : `"..msg.to.title.."`\n*GP ID* : `"..msg.to.id.."`\n*GP USER* : `"..(msg.to.username or "NO USER").."`\n*COMMAND* : `"..msg.text.."`\n*DATE* : `"..os.date('%B, %d, %Y\n', timestamp).."`"
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
return { 
  patterns = {
    "^[/!#](info)$"
  }, 
  run = run 
}

end