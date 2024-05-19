addCommandHandler("chatmessage", function(cmd, ...)
    local args = {...}
    local r, g, b = tonumber(args[1]), tonumber(args[2]), tonumber(args[3])
    
    -- rgb nastoy
    if r and g and b and r >= 0 and r <= 255 and g >= 0 and g <= 255 and b >= 0 and b <= 255 then
        outputChatBox(message,r, g, b)
    else
        outputChatBox("Некорректные значения цвета! Используйте /chatmessage [R] [G] [B], где R, G и B - числа от 0 до 255.", 255, 0, 0)
        return
    end
    
    
    local message = table.concat(args, " ", 4)
    if message then
        outputChatBox(message, r, g, b)
    else
        outputChatBox("Использование: /chatmessage [R] [G] [B] [текст]", 255, 255, 0)
    end
end)
