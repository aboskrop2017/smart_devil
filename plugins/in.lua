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
`امر كيبورد شفاف يعمل في القنوات يجب ان يكون البوت ادمن في القناة`

*/inline* رابط+رسالة شفافة+نص+قناة
مثال ع الامر :
*/inline* @userch+test+test👍🏻+https://telegram.me/username
➖⚜➖⚜➖⚜➖⚜➖
`اوامر شفافه وماركداون تعمل في الكروبات`
لجعل النص رابط
*/mk* text links
مثال ع الامر :
*/mk* Dev: medo https://telegram.me/username
➖⚜➖⚜➖⚜➖⚜➖
`انلاين بالكروب`
*/ig* test+test+https://telegram.me/username
مثال ع الامر : 
/ig test+test+https://telegram.me/username
➖⚜➖⚜➖⚜➖⚜➖
*/bd* TEXT : `لجعل النص ضخم`
*/dn* TEXT : `لجعل النص مائل`
*/bu* TEXT : `لجعل النص ازرق`
➖⚜➖⚜➖⚜➖⚜➖
*/sudo* : لعرض المطور انلاين 
*/ch* : لعرض قناة البوت انلاين 
➖⚜➖⚜➖⚜➖⚜➖
[۰۪۫D۪۫۰۰۪۫E۪۫۰۰۪۫V۪۫۰🌀](https://telegram.me/llRDXll)
[TAKWEEN 💯](https://telegram.me/joinchat/BlRaAj9q6MNIi4sxK47UNw)
]]..cha
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
return { 
  patterns = {
    "^[/!#](in)$"
  }, 
  run = run 
}

end