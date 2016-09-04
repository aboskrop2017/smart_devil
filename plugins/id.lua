do 
function run(msg, matches)
local ch = 'https://telegram.me/api_cli'
local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
local data = '* '..os.date('%x:%X\n*')
local id = 'id'..msg.from.id
local markdown = '*☺️🍃 Hi, *['..msg.from.first_name..']('..user..')\n*🗓 *'..data
local cha = '[۰۪۫C۪۫۰۰۪۫H۪۫۰💻]('..ch..')'
local help = "*ID* : `"..msg.from.id.."`\n*GP ID* : `"..msg.to.id.."`"
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
return { 
  patterns = {
    "^[/!#](id)$",
  }, 
  run = run 
}

end