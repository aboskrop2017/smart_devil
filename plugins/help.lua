do 
function run(msg, matches)
local ch = 'https://telegram.me/devhelptv'
local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
local data = '* '..os.date('%x:%X\n*')
local id = 'id'..msg.from.id
local markdown = '*☺️🍃 Hi, *['..msg.from.first_name..']('..user..')\n*🗓 *'..data
local cha = '[۰۪۫C۪۫۰۰۪۫H۪۫۰💻]('..ch..')'
local help = markdown..[[
➖⚜➖⚜➖⚜➖⚜➖
🔹 - */ls1* : `اوامر ادارة المجموعة`
🔹 - */ls2* : `اوامر حماية المجموعة`
🔹 - */ls3* : `اوامر اضافية للمجموعة`
🔹 - */in*  : `اوامر انلاين وماركداون`
🔹 - */sl*  : `اوامر خاصة بالمطورين`
➖⚜➖⚜➖⚜➖⚜➖
[۰۪۫D۪۫۰۰۪۫E۪۫۰۰۪۫V۪۫۰🌀](https://telegram.me/llRDXll)
[TAKWEEN 💯](https://telegram.me/joinchat/BlRaAj9q6MNIi4sxK47UNw)
]]..cha
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
return { 
  patterns = {
    "^[/!#](help)$",
    "^[/!#](help@fucck_bot)$",
  }, 
  run = run 
}

end