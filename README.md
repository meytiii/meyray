# Mey2Ray - Easy VLESS Proxy on GitHub Codespaces

**No installation. No technical skills. Just copy-paste your proxy link.**

---

## 🎯 What You'll Get

A working VLESS proxy link that you can paste into any proxy client (V2Ray, Nekobox, Shadowrocket, etc.).  
The proxy runs on GitHub's free servers – nothing to install on your computer.

---

## 📋 Step-by-Step (For Beginners)

### 1. Fork this repository

- Go to: https://github.com/meytiii/mey2ray
- Click the **Fork** button (top‑right corner)
- On the next page, just click **Create fork** (don't change anything)

> **Why fork?** A fork creates your own copy of the project. You'll need this to run the proxy.

### 2. Create a Codespace

- On **your forked repository** (it will say `your-username/mey2ray`), click the **Code** button
- Select the **Codespaces** tab
- Click **Create codespace on main**

A new browser tab will open. Wait 1–2 minutes while GitHub builds the container – you'll see a terminal with scrolling text.

### 3. Wait for the VLESS links

After the build finishes, the terminal will show several lines starting with `vless://` – these are your proxy links.  
**Scroll up** in the terminal until you see something like:

```
========================================
  MeyRay - VLESS Proxy (OLD IPs)
========================================

VLESS links:
vless://4b616b6f-6f6c-4e65-7773-xxx@94.130.50.12:443?encryption=none&security=tls&type=ws&sni=...
```

Copy **any one** of those long `vless://` links. That's your proxy.

### 4. Use the proxy

Paste the link into your proxy app (V2Ray, Nekobox, Streisand, etc.).  
If you don't have an app, search for "V2Ray client" for your device.

> 💡 **Tip:** Save the link somewhere. If your Codespace stops running, you can restart it and get a new link (the UUID will be different each time).

---

## ⏰ Keep Your Proxy Alive Longer

By default, GitHub Codespaces **shuts down after 30 minutes of inactivity**.  
Here's how to extend that to **4 hours (240 minutes)** – the maximum allowed:

- In your Codespace window, look at the bottom‑left corner for a gear icon ⚙️ (Settings)
- Or press `Ctrl + Shift + P` (Windows/Linux) / `Cmd + Shift + P` (Mac)
- Type `Preferences: Open Settings (UI)`
- Search for `idle timeout`
- Change **"Idle Timeout"** from `30` to `240` minutes
- Close the settings tab

Now your proxy will stay alive for up to 4 hours without activity.

---

## 🕒 Free Tier Limits (Important!)

GitHub Codespaces **free plan** gives you:

- **120 core‑hours per month** on a **2‑core machine** (the type this project uses)
- That means you can run this proxy for **60 hours per month** (120 ÷ 2 = 60)

> 📌 **Example:** If you run the proxy 2 hours every day, you'll use about 60 hours in a month – exactly your limit.

After you run out of hours, GitHub will stop your Codespace until next month.  
You can see your usage in GitHub's **Settings → Billing → Codespaces**.

**To save hours:** Stop the Codespace (click the hamburger menu ☰ → **Stop current Codespace**) when you don't need the proxy.

---

## 🧠 Troubleshooting

| Problem | Solution |
|---------|----------|
| No `vless://` links appear | Wait 2 more minutes, then refresh the browser tab. If still nothing, delete the Codespace and create a new one (Step 2). |
| Proxy doesn't connect | Make sure your app supports **VLESS + WebSocket + TLS**. Try a different IP from the list (they are all printed). |
| Codespace won't start | You may have reached your 60‑hour limit for the month. Wait for the next billing cycle. |

---

## ❓ Frequently Asked Questions

**Do I need to pay anything?**  
No – the free tier includes 120 core‑hours/month. Follow the 60‑hour limit above.

**Can I run this on my own computer?**  
Yes, but this guide is for GitHub Codespaces. See [Manual Usage](#manual-usage) below if you really want to run it locally.

**Will GitHub ban me?**  
This project is for educational purposes. Using GitHub's resources for proxying may violate their terms. We recommend using it lightly and for learning only.

**The link stopped working after a few hours**  
Your Codespace may have gone idle (if you didn't change the timeout) or you hit the monthly limit. Restart the Codespace – it will print a **new link** with a different UUID.

---

## 🔧 For Advanced Users (Manual Setup)

If you want to run this container on your own VPS or locally:

```bash
git clone https://github.com/meytiii/mey2ray
cd mey2ray
docker build -t mey2ray .
docker run -p 443:443 -e VLESS_UUID="your-uuid-here" mey2ray
```

Then use the printed links (replace the IP with your server's IP).

---

## ⚖️ Disclaimer

This software is provided **for educational purposes only**.  
The author is not responsible for any misuse or violation of GitHub's Terms of Service.  
Use at your own risk.

---

**Happy browsing – MeyTiii** 🚀
