do 
function run(msg, matches)
  if is_add(msg) or is_sudo(msg) then  
local ch = 'https://telegram.me/devhelptv'
local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
local data = '* '..os.date('%x:%X\n*')
local id = 'id'..msg.from.id
local markdown = '*☺️🍃 Hi, *['..msg.from.first_name..']('..user..')\n*🗓 *'..data
local cha = '[۰۪۫C۪۫۰۰۪۫H۪۫۰💻]('..ch..')'
local help = markdown..[[
➖⚜➖⚜➖⚜➖⚜➖
*/addbot* :: `تفعيل البوت `| 📢
*/rembot* :: `الغاء تفعيل البوت `| 🔕
*/creategroup* :: `صنع كروب` | ☑️
*/banall* :: `حضر عام` | 📛 
*/unbanall* ::  `الغاء الحضر العام` | 🚫
*/gbanlist* :: `قائمة المحضورين عام `| 📝
*/bot info* : `عرض معلومات البوت` | 🤖
*/addpro* : `رفع ادمن` | ➕
*/addrem* : `تنزيل ادمن `| ✖️
*/addowner* : `رفع مدير` | 🔝
*/broadcast* ::  `رسالة لجميع الكروبات` | 🌐
*/tosuper* :: `تحويل الكروب سوبر `| 🚀
*/serverinfo* ::  `معلومات السيرفر `| 🔘
*/send* :: `جلب ملف من السيرفر` | 🗂
*/leave* :: `البوت يخرج من المجموعة` | ⛔️
*/import* +`دخول البوت للكروب بالرابط    :: رابط `| 🚸 
*/pm* + `ارسال البوت رسالة خاص :: الرسالة + ايدي الشخص `| 💭
*/p* :: `قائمة ملفات البوت `| 🀄️
*/p* + `لتفعيل الملف :: اسم الملف`| ✔️
*/p* - `الغاء تفعيل الملف :: اسم الملف` | ✖️
*/clean* + `مسح رسائل الكروب :: عدد `| 🔱
*/update* :: `اعادة تشغيل البوت` | ♻️
➖⚜➖⚜➖⚜➖⚜➖
[۰۪۫D۪۫۰۰۪۫E۪۫۰۰۪۫V۪۫۰🌀](https://telegram.me/llRDXll)
[TAKWEEN 💯](https://telegram.me/joinchat/BlRaAj9q6MNIi4sxK47UNw)
]]..cha
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
if not is_add(msg) and not is_sudo(msg) then
  return "دي"
end
end
return { 
  patterns = {
    "^[/!#](sl)$"
  }, 
  run = run 
}

end
