# VLESS Server on Render

## ⚡ Deploy করার আগে

### ১. UUID পরিবর্তন করো
`config.json` ফাইল খুলো এবং `CHANGE-THIS-UUID` এর জায়গায় একটা নতুন UUID দাও।

UUID বানাতে এখানে যাও: https://www.uuidgenerator.net/

```json
"id": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
```

---

## 🚀 Render Deploy Steps

1. এই ফাইলগুলো GitHub-এ একটা নতুন repo-তে push করো
2. https://render.com → **New → Web Service**
3. GitHub repo connect করো
4. Settings:
   - **Environment**: Docker
   - **Port**: 10000
5. **Deploy** করো

Deploy হলে একটা URL পাবে:
```
https://your-app-name.onrender.com
```

---

## 📱 Client Config (v2rayNG / NekoBox)

নিচের লিংকটা copy করে app-এ import করো:

```
vless://YOUR-UUID@your-app-name.onrender.com:443?encryption=none&security=tls&sni=your-app-name.onrender.com&type=ws&path=%2Fvless#Render-VLESS
```

**পরিবর্তন করতে হবে:**
- `YOUR-UUID` → config.json-এ যে UUID দিয়েছো
- `your-app-name` → Render-এর actual URL

---

## ⚠️ সীমাবদ্ধতা (Render Free Tier)
- ১৫ মিনিট idle থাকলে sleep হয়ে যায়
- প্রথম request-এ ৩০-৬০ সেকেন্ড delay হতে পারে
- Speed সীমিত
