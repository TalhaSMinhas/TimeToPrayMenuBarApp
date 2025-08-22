# 🕌 TimeToPray

A lightweight **macOS menu bar app** that shows **daily prayer times** (Azaan (Call to Prayer) + Jamaat (Congregational Prayer)) for your mosque — right in your menu bar.
Built with **SwiftUI** for a clean native look and bundled with JSON timetables for offline use.

---

## ✨ Features

* 🕰️ Displays **Azaan (Call to Prayer)** and **Jamaat (Congregational Prayer)** times for Fajr, Zuhr, Asr, Maghrib, and Esha.
* 📅 Shows both **Gregorian** and **Hijri** dates (calculated using Umm al-Qura).
* 🏛️ Mosque-specific timetables are bundled directly into the app.
* 🌙 **Glass-style UI** that blends beautifully with macOS.
* ⚡ Lightweight and runs quietly in the menu bar.
* 🚀 Auto-start on login (optional).

---

## 📸 Screenshot

<img width="1710" height="1112" alt="Screenshot 2025-08-22 at 01 59 08-min" src="https://github.com/user-attachments/assets/8ccdcb7b-bc56-43f6-9097-728fea28181c" />

---

## 🔧 Installation

1. Download the latest release from the [Releases](../../releases) page.
2. Copy `TimeToPray.app` into your `/Applications` folder.
3. On first run, macOS may block the app because it’s unsigned:

   * Right click → **Open** → confirm.
   * Or run in Terminal:

     ```bash
     xattr -dr com.apple.quarantine /Applications/TimeToPray.app
     ```
4. The app will now run from your menu bar.

---

## ⚙️ Development

Clone and build with **Xcode 16+**:

```bash
git clone https://github.com/TalhaSMinhas/TimeToPray.git
cd TimeToPray
open TimeToPray.xcodeproj
```

### Requirements

* macOS 14+
* Xcode 16+
* Swift 5.9+

---

## 📂 Project Structure

```
TimeToPray/
├── Assets/                   # App icons & mosque icons
├── Models/                   # Data models (DayTimes)
├── TimetableStore.swift      # Loads timetable from JSON
├── ContentView.swift         # Main SwiftUI interface
├── TimeToPrayApp.swift       # Entry point (menu bar app)
└── masjid-ul-khaleel_2025... # Bundled prayer timetable JSON
```

---

## 🕌 Mosque Timetables

Currently bundled:

* **Masjid-ul-Khaleel, Buccleuch (2025)**

*(You can add your mosque’s timetable JSON by placing it in `Resources` and updating `TimetableStore.swift`.)*

---

## 🚀 Roadmap

* [ ] API coming soon.
* [ ] Support multiple mosques / JSONs.
* [ ] Configurable Jamaat offset (e.g. +3 mins after Maghrib).
* [ ] Auto-update timetables yearly.
* [ ] Publish on the Mac App Store.

---

## 📜 License

MIT © 2025 Talha Salman Minhas

---
