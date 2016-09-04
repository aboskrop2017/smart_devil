do
local function pre_process(msg)
if not is_momod(msg)  then
if msg then
    local hash = 'mustafaip:'..msg.to.id

    if redis:get(hash) and msg.text then
    delete_msg(msg.id, ok_cb, true)
 
    end
end
end
    return msg
    end


local function run(msg, matches)
    chat_id =  msg.to.id
    if is_momod(msg) and matches[1] == "lg silent" then
    local hash = 'mustafaip:'..msg.to.id
    redis:set(hash, true)
    return "الكروب في وضعية الصامت 🔕"
    elseif is_momod(msg) and matches[1] == "ug silent" then
    local hash = 'mustafaip:'..msg.to.id
    redis:del(hash)
    return 'تم الغاء وضعية الصامت في الكروب 🔔'
    end
    end


return {
    patterns = {
        '^/(lg silent)$',
        '^/(ug silent)$'
    },
    run = run,
    pre_process = pre_process
}
end