--[[
#
#ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
#:((
# For More Information ....! 
# Developer : Aziz < @TH3_GHOST > 
# our channel: @DevPointTeam
# Version: 1.1
#:))
#ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
#
]]
do

local function DevPoint(msg, matches)
    local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
local markdown = '**['..msg.from.first_name..']('..user..')'
if is_sudo(msg) then 
        local text = "✅- *Your sudo bot*".."\n".."🆔- *id* : `"..msg.from.id.."`\n".."♍️- *Name* : "..markdown.."\n".."♑️- *Username* : @"..msg.from.username.."\n".."💟- *Group Name* : `"..msg.to.title.."`" --@DevPointTeam
return send_markdown(msg, get_receiver_api(msg), text, true, 'md')
     end
if is_momod(msg) then 
        local text = "✅- Your admin Groups".."\n".."🆔- *id* : `"..msg.from.id.."`\n".."♍️- *Name* : "..markdown.."\n".."♑️- *Username* : @"..msg.from.username.."\n".."💟- *Group Name* : `"..msg.to.title.."`" --@DevPointTeam
        return send_markdown(msg, get_receiver_api(msg), text, true, 'md')
     end
if not is_momod(msg) then 
        local text = "✅- Your Members in Groups".."\n".."🆔- *id* : `"..msg.from.id.."`\n".."♍️- *Name* : "..markdown.."\n".."♑️- *Username* : @"..msg.from.username.."\n".."💟- *Group Name* : `"..msg.to.title.."`" --@DevPointTeam
       return send_markdown(msg, get_receiver_api(msg), text, true, 'md')
     end
if is_owner(msg) then 
        local text = "✅- Your owner in Groups".."\n".."🆔- *id* : `"..msg.from.id.."`\n".."♍️- *Name* : "..markdown.."\n".."♑️- *Username* : @"..msg.from.username.."\n".."💟- *Group Name* : `"..msg.to.title.."`" --@DevPointTeam
       return send_markdown(msg, get_receiver_api(msg), text, true, 'md')
     end
 end

return {  
  patterns = {
       "^[!/](me)$",
  },
  run = DevPoint,
}

end