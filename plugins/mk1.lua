do 
function run(msg, matches)
  if matches[1]== "bd" then
local helpp = "*"..matches[2].."*" 
send_markdown(msg, get_receiver_api(msg), helpp, true, 'md')
end
  if matches[1]== "dn" then
local help = "_"..matches[2].."_" 
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
  if matches[1]== "bu" then
local help = "`"..matches[2].."`" 
send_markdown(msg, get_receiver_api(msg), help, true, 'md')
end
end
return { 
  patterns = {
    "^[/!#](bd) (.*)$",
    "^[/!#](dn) (.*)$",
    "^[/!#](bu) (.*)$",    
  }, 
  run = run 
}

end