local function saeco(msg,matches)
local ipex = "text"..msg.to.id

if matches[1] == "setlink" then
redis:set(ipex , matches[2])
local fuck = "تم وضع الرابط للمجموعة ✅🌀\nالرابط : "..matches[2]
return fuck
end
if matches[1] == "link" then
local link = "📝 LINK GROUP : "..(redis:get(ipex) or ' *EROR!!\n\nقم بوضع الرابط عبر ارسال الامر /setlink').."\n"
return link
end
if matches[1] == "linkpv" then
        local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
     local markdown = '*☺️🍃 Hi, *['..msg.from.first_name..']('..user..')'
local text = "📝 LINK GROUP : "..(redis:get(ipex) or ' *EROR!!\n\nقم بوضع الرابط عبر ارسال الامر /setlink').."\n"
send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
local eror1 = markdown.."\n\nتم ارسال رابط المجموعة الى الخاص ✔"
 send_markdown(msg, get_receiver_api(msg), eror1, true, 'md')
 end
if matches[1]== "dllink" then
    redis:del(ipex)
    local help = "`تم حذف رابط المجموعة بنجاح `✅❌"
    send_markdown(msg, get_receiver_api(msg), help, true, 'md')
    end
end
return { 
patterns = { 
"^[!/#](link)$",
"^[!/#](setlink) (.+)$",
"^[!/#](linkpv)$",
"^[!/#](dllink)$",
}, 
run = saeco, 
}