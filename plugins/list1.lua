do 
function run(msg, matches)
local ch = 'https://telegram.me/api_cli'
local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
local data = '* '..os.date('%x:%X\n*')
local id = 'id'..msg.from.id
local markdown = '*☺️🍃 Hi, *['..msg.from.first_name..']('..user..')\n*🗓 *'..data
local cha = '[۰۪۫C۪۫۰۰۪۫H۪۫۰💻]('..ch..')'
local help = markdown..[[
➖⚜➖⚜➖⚜➖⚜➖
*/who* : `قائمة الاعضاء` | 👥
*/info* : `معلومات العضو `| 📃
*/gpinfo* : `معلومات الكروب `| 💢
*/settings* : `الاعدادات` | ⚙
*/me* : `موقعك في المجموعة `| 🏌
*/id* : `لعرض الايدي` | 🆔
➖⚜➖⚜➖⚜➖⚜➖
*/addpro* : `رفع ادمن `| ➕
*/addrem* : `تنزيل ادمن `| ✖️
*/addowner* : `رفع مدير `| 🔝
*/setadmin* : `رفع اداري `| 🔝 
||_اذا كان البوت غير منشئ للمجموعة لايمكنك رفع اداري_||
*/modlist* : `قائمة الادمنية` | 👥
➖⚜➖⚜➖⚜➖⚜➖
*/link* : `رابط الكروب `| 🔗
*/setlink* : `وضع رابط `| 📌
*/dllink* : `حذف رابط الكروب` | ❌
*/linkpv* : `الرابط خاص `| 📩
*/newlink* : `رابط جديد `| 🆕
➖⚜➖⚜➖⚜➖⚜➖
*/block* + `لمنع كلمة معينة : كلمة `| ✖️
*/unblock* + `السماح بالكلمة : كلمة` ✔️
*/blocks word* :` قائمة الكلمات` | 💭
*/clean blocks word* : `مسح الكلمات` |🔰
➖⚜➖⚜➖⚜➖⚜➖
*/rep* + {TXT} {REPLY} :` اضافة رد` | ➕
*/rep* - {TXT} {REPLY} : ` حذف رد `| ➖
*/rep* : `لرؤية الردود` | ✔️
➖⚜➖⚜➖⚜➖⚜➖
*/setrules* + `وضع قوانين : القوانين` | ⚙
*/rules* : `رؤية القوانين` : 👁
*/setabout* + `وضع وصف : الوصف` | 🔧
*/setname* + `وضع اسم : اسم` | 🎫
*/setwlc* + `وضع الترحيب : الترحيب` |🚏
*/setbye* + `وضع التوديع : التوديع` | 💭
*/setphoto* : `وضع صوره` | 🎡
➖⚜➖⚜➖⚜➖⚜➖
`/clean ↴ حذف` ⛔️
*rules* :  `القوانين` | 🎌
*about* : `الوصف` | 📃
*modlist* : `الادمنية` | 👥
*muteuser* : `المكتومين` | 🗣
*wlc* : `رسالة الترحيب` | 📝
*bye* : `رسالة الخروج` | 🖐
*username* : `المعرف` | @
➖⚜➖⚜➖⚜➖⚜➖
[۰۪۫D۪۫۰۰۪۫E۪۫۰۰۪۫V۪۫۰🌀](https://telegram.me/llRDXll)
]]..cha
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
return { 
  patterns = {
    "^[/!#](ls1)$"
  }, 
  run = run 
}

end
