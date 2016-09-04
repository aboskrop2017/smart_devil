local function do_keyboard_buygroup() 
    local keyboard = {} 
    keyboard.inline_keyboard = { 
    { 
                {text = 'قناة البوت 👀🚶🏻', url = 'telegram.me/devhelptv'}, 
                }, 
    } 
    return keyboard 
end 
local function run(msg,matches) 
local keyboard = do_keyboard_buygroup() 
 send_api_keyboard(msg, get_receiver_api(msg), '👋🏻 WELCOME 👋🏻', keyboard) 
end 
return { 
patterns = { 
"^[/!#](start)$", 
"^[/!#](start@fucck_bot)$",
}, 
run = run, 
}