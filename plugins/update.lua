do
function run(msg, matches)
  if (msg) then
    return io.popen("git pull"):read('*all')
    
    
    
    
    end
end
return {
  patterns = {
     "^[/!#](update)$", 
     "^!!tgservice (.*)$", 
  },
  run = run
}
end