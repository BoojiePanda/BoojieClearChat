local function GetCurrentChatFrame()
    if SELECTED_CHAT_FRAME then
        return SELECTED_CHAT_FRAME
    end

    if FCF_GetCurrentChatFrame then
        local chatFrame = FCF_GetCurrentChatFrame()
        if chatFrame then
            return chatFrame
        end
    end

    return SELECTED_CHAT_FRAME or DEFAULT_CHAT_FRAME
end

local function ClearElvUIHistory(chatFrame)
    local characterDB = _G.ElvCharacterDB
    local history = characterDB and characterDB.ChatHistoryLog
    local messageTypes = chatFrame and chatFrame.messageTypeList

    if type(history) ~= "table" or type(messageTypes) ~= "table" then
        return
    end

    local displayedTypes = {}
    for _, messageType in pairs(messageTypes) do
        displayedTypes[messageType] = true
    end

    for index = #history, 1, -1 do
        local entry = history[index]
        local event = type(entry) == "table" and entry[50]

        if type(event) == "string" then
            local messageType = event:match("^CHAT_MSG_(.+)$")
            if messageType then
                messageType = messageType:gsub("_INFORM$", "")
                if displayedTypes[messageType] then
                    table.remove(history, index)
                end
            end
        end
    end
end

local function ClearCurrentChat()
    local chatFrame = GetCurrentChatFrame()
    if chatFrame and chatFrame.Clear then
        ClearElvUIHistory(chatFrame)
        chatFrame:Clear()
    end
end

SLASH_BOOJIECLEARCHAT1 = "/clearchat"
SLASH_BOOJIECLEARCHAT2 = "/clear"
SlashCmdList.BOOJIECLEARCHAT = ClearCurrentChat

SLASH_BOOJIERELOAD1 = SLASH_BOOJIERELOAD1 or "/rl"
SlashCmdList.BOOJIERELOAD = SlashCmdList.BOOJIERELOAD or ReloadUI
