# 🔑 FiveM KeyLogger (Insert / Right Shift)

A simple script that logs **INSERT** and **Right SHIFT** key presses to a Discord webhook.

---

## ✨ Features
- ✅ Detects INSERT and Right SHIFT
- ✅ Logs to Discord (embed)
- ✅ Shows player name, ID, and identifiers (Steam, FiveM, Discord, etc.)
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
- All available identifiers are logged (steam, license, fivem, discord…).
- Works for **INSERT** and **Right SHIFT** (you can add more if needed).
