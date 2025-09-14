local key = require 'vkeys'
require "moonloader"

function main()
  if not isSampfuncsLoaded() or not isSampLoaded() then return end
  while not isSampAvailable() do wait(0) end

  -- Регистрируем команду "enter" и связываем её с функцией onEnterCommand
  sampRegisterChatCommand("enter", onEnterCommand)

  while true do
    wait(0)
  end
end

-- Эта функция вызывается, когда в чате вводится команда "/enter"
function onEnterCommand()
  setVirtualKeyDown(VK_RETURN, true)
  wait(10)
  setVirtualKeyDown(VK_RETURN, false)
end
