# 🕐 Cooldown Sistemi Tutorial

## 📖 Genel Bakış

Cooldown sistemi, oyuncuların belirli aksiyonları tekrar tekrar kullanmasını engellemek için kullanılır. Minecraft'ta yetenek sistemleri, düğmeler, özel eşyalar ve daha fazlası için idealdir.

---

## 🎯 Örnekler

### 1. Basit Cooldown (`example_1_simple.mcfunction`)

**Ne Yapar:** Bir düğmeye basıldığında 5 saniye bekletir

**Test:** `/function tutorial:cooldown/example_1_simple`

**Adımlar:**
1. Cooldown kontrol et (`macro:cooldown/check`)
2. Eğer hazırsa → Aksiyonu gerçekleştir
3. Cooldown başlat (`macro:cooldown/set`)
4. Eğer meşgulse → Kalan süreyi göster

---

### 2. Multi-Skill Sistemi (`example_2_skills.mcfunction`)

**Ne Yapar:** Aynı oyuncu için 3 farklı skill, her biri ayrı cooldown

**Test:** `/function tutorial:cooldown/example_2_skills`

**Öğrenecekleriniz:**
- Aynı oyuncu için birden fazla cooldown
- Farklı duration değerleri
- Paralel cooldown yönetimi

---

## 💡 Temel Kullanım

### Cooldown Kontrol

```mcfunction
# Input hazırla
data modify storage macro:input player set value "Steve"
data modify storage macro:input key set value "my_cooldown"

# Kontrol et
function macro:cooldown/check with storage macro:input {}

# Sonuç oku
# output.result = 1b → Hazır
# output.result = 0b → Meşgul
```

### Cooldown Başlat

```mcfunction
data modify storage macro:input player set value "Steve"
data modify storage macro:input key set value "my_cooldown"
data modify storage macro:input duration set value 100  # 100 tick = 5 saniye

function macro:cooldown/set with storage macro:input {}
```

### Kalan Süre

```mcfunction
data modify storage macro:input player set value "Steve"
data modify storage macro:input key set value "my_cooldown"

function macro:cooldown/remaining with storage macro:input {}

# output.result → kalan tick sayısı
```

---

## 🚀 Gerçek Kullanım Senaryoları

### Yetenek Sistemi

```mcfunction
# Oyuncu fireball kullanmak istiyor
data modify storage macro:input player set from entity @s UUID
data modify storage macro:input key set value "skill_fireball"
function macro:cooldown/check with storage macro:input {}

execute if data storage macro:output {result:1b} run function mypack:skills/fireball_cast
execute if data storage macro:output {result:0b} run function mypack:skills/cooldown_message
```

### Düğme Sistemi

```mcfunction
# Advancement ile düğme algılama
# mypack:button_pressed.mcfunction

data modify storage macro:input player set from entity @s UUID
data modify storage macro:input key set value "button_press"
function macro:cooldown/check with storage macro:input {}

execute if data storage macro:output {result:1b} run function mypack:button_action
execute if data storage macro:output {result:0b} run tellraw @s {"text":"Düğme cooldown'da!","color":"red"}
```

---

## ⏱️ Süre Dönüşümleri

| Tick | Saniye | Kullanım |
|------|--------|----------|
| 20   | 1 sn   | Hızlı aksiyonlar |
| 40   | 2 sn   | Kısa cooldown |
| 100  | 5 sn   | Orta cooldown |
| 200  | 10 sn  | Uzun cooldown |
| 600  | 30 sn  | Çok uzun cooldown |
| 1200 | 60 sn  | 1 dakika |

---

## 🐛 Yaygın Hatalar

### Hata 1: Cooldown hiç dolmuyor
**Neden:** `/reload` yapıldı, epoch sıfırlandı  
**Çözüm:** macroEngine-dp v3.0+ kullanın (bug düzeltildi)

### Hata 2: Tüm oyuncular aynı cooldown'u paylaşıyor
**Neden:** `player` değeri sabit  
**Çözüm:** `from entity @s UUID` kullanın

### Hata 3: Cooldown çok uzun
**Neden:** duration tick cinsinden  
**Çözüm:** 1 saniye = 20 tick

---

## 📚 İlgili Fonksiyonlar

- `macro:cooldown/check` - Cooldown kontrol
- `macro:cooldown/set` - Cooldown başlat
- `macro:cooldown/remaining` - Kalan süre
- `macro:cooldown/clear` - Tek cooldown sil
- `macro:cooldown/clear_all` - Tüm cooldown'ları sil

---

**Sonraki:** [Event Sistemi](../event/README.md)
