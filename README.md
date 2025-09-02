# 🔑 FiveM KeyLogger (Insert Only)

A simple script that logs **INSERT** key presses to a Discord webhook.

---

## ✨ Features
- ✅ Detects INSERT key
- ✅ Logs to Discord (embed)
- ✅ Shows player name and ID only (no IP, no identifiers)
- ✅ Plug & Play resource

---

## ⚙️ Installation
1. Download the `keylogger` folder into `resources/`
2. Open `server.lua` and set your Discord webhook:
   ```lua
   local webhook = "https://discord.com/api/webhooks/YOUR_WEBHOOK"
   ```
3. Add this to your `server.cfg`:
   ```
   ensure keylogger
   ```

---

## 📝 Notes
- Only INSERT is logged in this version.
- No identifiers (steam, license, discord, IP) are logged for privacy reasons.
