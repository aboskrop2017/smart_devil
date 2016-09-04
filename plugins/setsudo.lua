function reload_plugins( )
plugins = {}
load_plugins()
end
function run(msg, matches)
if tonumber (msg.from.id) == 133202194 then--expample 123456789
if matches[1]:lower() == "upsudo" then
table.insert(_config.sudo_users, tonumber(matches[2]))
print(matches[2]..' added to sudo users')
save_config()
reload_plugins(true)
return matches[2]..' added to sudo users'
if tonumber (msg.from.id) == 133202194 then--expample 123456789
if matches[1]:lower() == "upvip" then
table.insert(_config.add_users, tonumber(matches[2]))
print(matches[2]..' added to vip users')
save_config()
reload_plugins(true)
return matches[2]..' added to vip users'
end
end
end
return {
patterns = {
"^[!/#](upsudo) (%d+)$",
"^[!/#](upvip) (%d+)$",
},
run = run
}
--By REZA
--Our Channel : http://Telegram.me/Hextor_Ch