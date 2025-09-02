local webhookEvent = 'keylogger:logKey'


local KEY_INSERT = 121 -- INSERT

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustReleased(0, KEY_INSERT) then
            TriggerServerEvent(webhookEvent, "INSERT")
        end
    end
end)
