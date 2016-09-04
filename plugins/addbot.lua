local function do_keyboard_buygroup() 
    local keyboard = {} 
    keyboard.inline_keyboard = { 
    { 
                {text = 'اشتركو 📡💻', url = 'telegram.me/dev_Boos'}, 
                }, 
    } 
    return keyboard 
end 
local function run(msg,matches) 
local keyboard = do_keyboard_buygroup() 
 send_api_keyboard(msg, get_receiver_api(msg), 'قناة البوت 🔋️💻', keyboard) 
end 
return { 
patterns = { 
"[/!#](addbot)$" 
}, 
run = run, 
}