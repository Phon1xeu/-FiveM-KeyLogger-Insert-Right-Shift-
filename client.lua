local webhookEvent = 'keylogger:logKey'

-- Key codes
local KEY_INSERT = 121 
local KEY_RSHIFT = 21  

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustReleased(0, KEY_INSERT) then
            TriggerServerEvent(webhookEvent, "INSERT")
        end

        if IsControlJustReleased(0, KEY_RSHIFT) then
            TriggerServerEvent(webhookEvent, "Right SHIFT")
        end
    end
end)
