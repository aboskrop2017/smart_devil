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
*/kick* + <user|reply> :  `طرد` | ⛔️
*/kkdl* : `طرد جميع الحسابات المحذوفه` | 🗑
*/silent* + <user|reply> : `كتم` | 🔕
*/block* + <user|reply>: `بلوك` | ♨️
*/ban* + <user|reply>: `حظر` | 🚷
*/unban* + <user> : `الغاء الحظر` | ⭕️
*/banlist* : `المحظورين` | 🆘
*/id* : `ايدي` | 🆔
*/kickme* : `مغادرة` | 🚫
➖⚜➖⚜➖⚜➖⚜➖
`/lg` ↴ 🔒 اقفل | `/ug` ↴ 🔓 افتح
➖⚜➖⚜➖⚜➖⚜➖
*audio* : `منع الصوتيات `| 🔊
*photo* : `منع الصور` | 🌠
*video* : `منع الفديوات` | 🎥
*gifs* : `منع الصور المتحركة` | 🎡
*doc* : `منع الملفات` | 🗂
*text* : `منع الكتابة` | 📝
*all* : `قفل كل شي` | 🔕
*links* : `الروابط` | 🔗
*contacts* : `جهات الاتصال` | 📵
*flood* : `التكرارات` | 🔐
*Spam* : `الكلايش الطويلة` | 📊
*arabic* : `اللغة العربية` | 🆎
*english* : `اللغة الانكليزية` : | 🔡
*member* : `اضافة الاعضاء` | 👤
*rtl* : `الرتل` | 🚸
*tgservice* : `اشعارات الدخول `| ⚛
*sticker* : `الملصقات` | 🎡
*tag* : `الاشارة او التاك` | ➕
*emoji* : `السمايلات` | 😃
*bots* : `البوتات` | 🤖
*fwd* : `اعادة التوجيه` | ↩️
*join* : `الدخول عبر الرابط` | 🚷
*username* : `اليوزرنيم` | @
*media* : `الميديا` | 🆘
*badword* : `الكلمات السيئة` | 🏧
*leave* : `المغادرة` | 🚶
*strict* : `الحماية` | ⛔️
*silent* : `الدردشه` | 📝
➖⚜➖⚜➖⚜➖⚜➖
🔹طريقة استخدام الاوامر 🔹
🔒`/lg` +  للقفل — الامر  
🔓`/ug` + للفتح — الامر 
➖⚜➖⚜➖⚜➖⚜➖
[۰۪۫D۪۫۰۰۪۫E۪۫۰۰۪۫V۪۫۰🌀](https://telegram.me/llRDXll)
[TAKWEEN 💯](https://telegram.me/joinchat/BlRaAj9q6MNIi4sxK47UNw)
]]..cha
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
return { 
  patterns = {
    "^[/!#](ls2)$"
  }, 
  run = run 
}

end