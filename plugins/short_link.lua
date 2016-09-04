do
local function run(msg, matches)
if matches[1]:lower() == 'shortlink' then
local user = 'https://telegram.me/'..(msg.from.username or msg.from.first_name)
local markdown = '*☺️🍃 Hi, *['..msg.from.first_name..']('..user..')'
local link = URL.escape(matches[2])
url = "https://api-ssl.bitly.com/v3/shorten?access_token=f2d0b4eabb524aaaf22fbc51ca620ae0fa16753d&longUrl="..link
jstr, res = https.request(url)
jdat = JSON.decode(jstr)
if jdat.message then
local link = markdown..'\n\nاختصار الرابط\n'..jdat.message
send_markdown(msg, get_receiver_api(msg), link, true, 'md')
else
local link = markdown..'\n\nاختصار الرابط\n'..jdat.data.url
send_markdown(msg, get_receiver_api(msg), link, true, 'md')
end
end
if matches[1]:lower() == 'unshort' then
local response_body = {}
local request_constructor = {
url = matches[2],
method = "HEAD",
sink = ltn12.sink.table(response_body),
headers = {},
redirect = false
}

local ok, response_code, response_headers, response_status_line = http.request(request_constructor)
if ok and response_headers.location then
return "الرابط الاصلي : \n"..response_headers.location
elseif not ok then
return "Can't expand the url."
end
end
end

return {
patterns = {
"^[/#!](unshort) (.*)$",
"^(unshort) (.*)$",
"^(unshort) (.*)$",
"^[/#!](shortlink) (.*)$",
},
run = run,
}
end