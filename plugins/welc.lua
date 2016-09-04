local function do_keyboard_buygroup() 
    local keyboard = {} 
    keyboard.inline_keyboard = { 
    { 
                {text = 'القناة 💻', url = 'telegram.me/dev_boos'}, 
                }, 
    } 
    return keyboard 
end 
local function run(msg,matches) 
local keyboard = do_keyboard_buygroup() 
 send_api_keyboard(msg, get_receiver_api(msg), 'تابع قناة البوت ⤵️💻', keyboard) 
end 
return { 
patterns = { 
  "^!!tgservice (.*)$",
}, 
run = run, 
}