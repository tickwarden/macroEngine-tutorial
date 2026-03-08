# 📚 macroEngine Tutorial & Demo Pack

**Minecraft 1.21.x Datapack** | Step-by-step examples for [macroEngine-dp](https://github.com/tickwarden/macroEngine-dp)

---

## 🎯 Bu Nedir?

macroEngine-dp kütüphanesinin **her modülü için pratik örnekler** içeren tutorial datapack. Her örnek:

- ✅ **Detaylı yorumlarla** - Her satır açıklanmış
- ✅ **Test komutlarıyla** - Hemen deneyebilirsiniz
- ✅ **Step-by-step** - Adım adım öğrenme
- ✅ **Debug friendly** - Hata ayıklama mesajları

---

## 📦 Kurulum

### Gereksinimler:
1. **macroEngine-dp v3.0+** → [İndir](https://github.com/tickwarden/macroEngine-dp)
2. Minecraft Java Edition 1.21.x
3. Datapack bilgisi (temel)

### Adımlar:
```bash
# 1. macroEngine-dp'yi kur (önce!)
sunucu/world/datapacks/macroEngine-dp/

# 2. Tutorial pack'i kur
sunucu/world/datapacks/macroEngine-tutorial/

# 3. Sunucuyu yükle
/reload
```

---

## 📚 Tutorial Listesi

### 🕐 1. Cooldown Sistemi
**Klasör:** `examples/cooldown/`
- ✅ Basit cooldown (5 saniye bekleme)
- ✅ Skill cooldown (yetenek sistemi)
- ✅ Multi-cooldown (aynı anda birden fazla)
- ✅ Progress bar gösterimi

**Test:** `/function tutorial:cooldown/test`

---

### 📡 2. Event Sistemi
**Klasör:** `examples/event/`
- ✅ Event kaydı (on_join, on_kill vb.)
- ✅ Event tetikleme
- ✅ Context geçirme
- ✅ Multi-handler

**Test:** `/function tutorial:event/test`

---

### 🔢 3. Matematik Modülü
**Klasör:** `examples/math/`
- ✅ Mesafe hesaplama (distance2d)
- ✅ Karekök (sqrt)
- ✅ Lerp (interpolasyon)
- ✅ Clamp (sınırlama)

**Test:** `/function tutorial:math/test`

---

### 👥 4. Takım Sistemi
**Klasör:** `examples/team/`
- ✅ Takım oluşturma
- ✅ Oyuncu ekleme/çıkarma
- ✅ Takım kontrolü
- ✅ PvP arena örneği

**Test:** `/function tutorial:team/test`

---

### ⚙️ 5. Config Sistemi
**Klasör:** `examples/config/`
- ✅ Ayar kaydetme/okuma
- ✅ Varsayılan değerler
- ✅ Integer vs String
- ✅ Runtime güncelleme

**Test:** `/function tutorial:config/test`

---

### 👤 6. Oyuncu Veri Yönetimi
**Klasör:** `examples/player/`
- ✅ Veri kaydetme (coins, level, xp)
- ✅ Veri okuma
- ✅ Increment/Decrement
- ✅ Reset

**Test:** `/function tutorial:player/test`

---

### ⚔️ 7. Komut Modülü
**Klasör:** `examples/cmd/`
- ✅ Damage/Heal
- ✅ Particle efektleri
- ✅ Title sistemi
- ✅ Scoreboard işlemleri

**Test:** `/function tutorial:cmd/test`

---

### 💬 8. Mesajlaşma
**Klasör:** `examples/string/`
- ✅ Chat mesajları
- ✅ Broadcast
- ✅ Progress bar
- ✅ Header

**Test:** `/function tutorial:string/test`

---

### 🔍 9. Predicate Kullanımı
**Klasör:** `examples/predicate/`
- ✅ is_survival, is_sneaking vb.
- ✅ Kombine kullanım
- ✅ Conditional logic
- ✅ Arena örnekleri

**Test:** `/function tutorial:predicate/test`

---

### 🔄 10. Lib (Yardımcı Fonksiyonlar)
**Klasör:** `examples/lib/`
- ✅ for_each_player
- ✅ repeat (döngü)
- ✅ wait (gecikme)
- ✅ input_push/pop

**Test:** `/function tutorial:lib/test`

---

## 🚀 Hızlı Başlangıç

### 1. Tüm Testleri Çalıştır
```
/function tutorial:test_all
```

### 2. Belirli Modül Test
```
/function tutorial:cooldown/test
/function tutorial:event/test
/function tutorial:math/test
```

### 3. Debug Modu
```
# Debug açma
/function macro:debug/toggle

# Test çalıştır
/function tutorial:cooldown/simple_example

# Debug kapatma
/function macro:debug/toggle
```

---

## 📖 Nasıl Kullanılır?

### Örnek 1: Cooldown Öğrenmek

1. **Kodu oku:**
   ```
   macroEngine-tutorial/data/tutorial/functions/cooldown/simple_example.mcfunction
   ```
   Tüm satırlar yorumlanmış!

2. **Test et:**
   ```
   /function tutorial:cooldown/test
   ```

3. **Kendi projenize uygula:**
   Örnekteki kodu kopyalayıp namespace'inize yapıştırın

---

## 🔧 Debug İpuçları

### Test Sırasında Sorun Çıkarsa:

1. **macroEngine-dp kurulu mu?**
   ```
   /function macro:debug/toggle
   ```
   Hata veriyorsa → macroEngine-dp eksik

2. **Storage kontrol:**
   ```
   /data get storage macro:engine
   /data get storage macro:input
   /data get storage macro:output
   ```

3. **Debug mesajları:**
   Her tutorial fonksiyonu debug mesajı gösterir:
   ```
   [Tutorial] ✓ Cooldown set: 100 ticks
   [Tutorial] ✗ Error: Player not found
   ```

---

## 📁 Klasör Yapısı

```
macroEngine-tutorial/
├── data/
│   └── tutorial/
│       ├── functions/
│       │   ├── cooldown/          # Cooldown örnekleri
│       │   ├── event/             # Event örnekleri
│       │   ├── math/              # Matematik örnekleri
│       │   ├── team/              # Takım örnekleri
│       │   ├── config/            # Config örnekleri
│       │   ├── player/            # Oyuncu veri örnekleri
│       │   ├── cmd/               # Komut örnekleri
│       │   ├── string/            # Mesajlaşma örnekleri
│       │   ├── predicate/         # Predicate örnekleri
│       │   ├── lib/               # Lib örnekleri
│       │   ├── load.mcfunction    # Datapack yükleme
│       │   └── test_all.mcfunction # Tüm testler
│       └── advancements/          # Test trigger'ları
├── pack.mcmeta
├── pack.png
└── README.md
```

---

## 🎓 Öğrenme Sırası (Önerilen)

1. **Başlangıç:** `cooldown/` → En basit sistem
2. **Orta:** `player/`, `config/`, `string/`
3. **İleri:** `event/`, `team/`, `math/`
4. **Uzman:** `lib/`, `predicate/`

---

## 💡 Kendi Projenize Entegrasyon

Her örnek **standalone** çalışır, kendi namespace'inize kopyalayabilirsiniz:

```mcfunction
# Tutorial'dan:
# tutorial:cooldown/simple_example.mcfunction

# Kendi projenize:
# mypack:abilities/fireball.mcfunction

# Sadece namespace'i değiştir, logic aynı!
```

---

## 🤝 Katkıda Bulun

Yeni örnek eklemek ister misiniz?

1. Fork repository
2. Yeni örnek ekle (`examples/your_module/`)
3. Test fonksiyonu yaz
4. Pull request aç

---

## 📜 Lisans

MIT License - macroEngine-dp ile aynı

---

## 🔗 Bağlantılar

- **macroEngine-dp:** https://github.com/tickwarden/macroEngine-dp
- **Ana Profil:** https://github.com/tickwarden
- **Sorular:** GitHub Issues

---

**Made with ❤️ for Minecraft Datapack Community**

*Tutorial Pack v1.0 | Minecraft 1.21.x | macroEngine-dp v3.0+*
