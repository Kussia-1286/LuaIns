local key = require 'vkeys'
require "moonloader"

function main()
  if not isSampfuncsLoaded() or not isSampLoaded() then return end
  while not isSampAvailable() do wait(0) end
  
  -- Регистрация команды /enter
  SampRegisterChatCommand("enter", cmd_enter)
  
  while true do
    wait(0)
  end
end

function cmd_enter(arg)
  -- Отправка клавиши Enter
  setVirtualKeyDown(key.VK_RETURN, true) 
  wait(50)
  setVirtualKeyDown(key.VK_RETURN, false) 
end
