
do

function run(msg, matches)
       if not is_momod(msg) then
        return "For owner only!"
       end
    local data = load_data(_config.moderation.data)
    local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
     local markdown = '*☺️🍃 Hi, *['..msg.from.first_name..']('..user..')'
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        local eror = markdown.."\n\nFirst use /newlink or if bot isn't creator user /setlink"
        send_markdown(msg, get_receiver_api(msg), eror, true, 'md')
       end
         local text = "SuperGroup link  :\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           local eror1 = markdown.."\n\nتم ارسال رابط المجموعة الى الخاص ✔"
                   send_markdown(msg, get_receiver_api(msg), eror1, true, 'md')
end

return {
  patterns = {
 --   "^[/#!]([Ll]inkpv)$"
  },
  run = run
}

end

--[[
post by : @DevPointCH

للمزيد من الشروحات والملفات اشترك في قناة @DevPointCH

]]