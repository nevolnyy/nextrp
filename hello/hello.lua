function joinHandler()
	outputChatBox("Добро пожаловать  "..getPlayerName(source))
end
addEventHandler("onPlayerJoin", getRootElement(), joinHandler)
