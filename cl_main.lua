local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(200)

        if Config.RisoluzioneVietata[tostring(GetAspectRatio())] then
            QBCore.Functions.Notify("Le proporzioni dello schermo che stai usando non sono ammesse all\'interno del nostro server, cambiale o verrai kickato!", "error")
            Citizen.Wait(50000)
            if Config.RisoluzioneVietata[tostring(GetAspectRatio())] then
                TriggerServerEvent("cisco-risoluzionevietata:KickPlayer")
            end
        else
            Citizen.Wait(1500)
        end
    end
end)