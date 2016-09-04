local function run(msg,saeco)
local text = saeco[2]
local link = saeco[4]
local inline_text = saeco[3]
local keyboard = {}
keyboard.inline_keyboard = {
{
{text = inline_text, url = link },
},
}
send_api_keyboard(msg, get_receiver_api(msg),text, keyboard)
end
return { 
patterns = {
"[!/#](ig) (.+)+(.+)+(.+)"
}, 
run = run
}