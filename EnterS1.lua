script_name("SendEnter")
script_author("Unknown")

require "lib.moonloader"
local sampev = require("lib.samp.events")
local key = require 'vkeys'


function main()
    repeat wait(0) until isSampAvailable()
    
    while true do
        wait(100)
      sampRegisterChatCommand("enter", EntSend     
        
    end
end


function EntSend()
 setVirtualKeyDown(VK_RETURN, true)
  wait(10)
  setVirtualKeyDown(VK_RETURN, false)
end