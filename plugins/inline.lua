local function do_keyboard_buygroup() 
    local keyboard = {} 
    keyboard.inline_keyboard = { 
    { 
                {text = 'المطور 💯', url = 'telegram.me/xxx_down_xxx'}, 
                }, 
    } 
    return keyboard 
end 
local function run(msg,matches) 
local keyboard = do_keyboard_buygroup() 
 send_api_keyboard(msg, get_receiver_api(msg), 'اهلا بك عزيزي 👋🏻💻', keyboard) 
end 
return { 
patterns = { 
"[/!#](sudo)$" 
}, 
run = run, 
}