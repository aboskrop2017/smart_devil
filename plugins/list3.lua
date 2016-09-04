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
*/music* + `للبحث على اغنية : الاسم` |🔍
*/dl* + `لتحميلها : رقم الاغنية` |🎵
*/insta* +`معلومات الحساب : اليوزر `|🎌
*/weather* +`لمعرفة الطقس : المنطقة `|⛈
*/shortlink* +`اختصار الرابط : رابط` |🔗
*/unshort* +`فك اختصار الرابط : الرابط` | 💳
*/azan* +`مواقيت الاذان : المنطقة` |🕌
*/tr* +`للترجمة : كلمات` |📑
*/time* +`لمعرفة الوقت : المنطقة `|⏱
*/sticker* +`تحويل صورة ملصق : بالرد` |🚩
*/image* +: `تحويل الملصق الى صورة`|💡
*/text* +`تحويل النص صورة : بالرد `|🌈
*/echo* +`البوت يكرر كلامك : كلمات` |💬
*/voice* +`تحويل النص صوت : كلمات `|🔊
*/tagall* +`اشارة لكل الاعضاء : كلمات` |➕
*/write* + `زخرفة اسماء : كلمات انكلش `| ♨️
➖⚜➖⚜➖⚜➖⚜➖
[۰۪۫D۪۫۰۰۪۫E۪۫۰۰۪۫V۪۫۰🌀](https://telegram.me/llRDXll)
[TAKWEEN 💯](https://telegram.me/joinchat/BlRaAj9q6MNIi4sxK47UNw)
]]..cha
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
return { 
  patterns = {
    "^[/!#](ls3)$"
  }, 
  run = run 
}

end