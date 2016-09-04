do
  
  local function run(msg,matches)
    if matches[1] == "chat_add_user" then
      local kick = "تم اضافة : @"..msg.from.username.."في المجموعة بنجاح ✅💯\n\nشكرا لاضافته في : "..msg.to.title.."\n\nتابع قناتي 💻🌈 @DEV_BOOS"
    send_large_msg('user#id'..msg.from.id, kick.."\n", ok_cb, false)
    end
end
return {
    patterns = {
"^!!tgservice (.*)$" 
    },
    run = run,
}
end