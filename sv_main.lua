RegisterServerEvent("cisco-risoluzionevietata:KickPlayer")
AddEventHandler("cisco-risoluzionevietata:KickPlayer", function()
    DropPlayer(source, Config.Messaggio)
end)
