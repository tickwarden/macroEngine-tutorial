# Katkıda Bulunma Rehberi

macroEngine-tutorial'a katkıda bulunmak istediğiniz için teşekkürler! 🎉

## Nasıl Katkıda Bulunabilirsiniz?

### 🐛 Hata Bildirimi
1. Önce mevcut [Issues](https://github.com/tickwarden/macroEngine-tutorial/issues)'ları kontrol edin
2. Yeni bir issue açın ve **Bug Report** şablonunu kullanın
3. Minecraft versiyonu, macroEngine-dp versiyonu ve hata mesajını belirtin

### 💡 Yeni Örnek / Tutorial
1. Hangi modülü kapsadığını belirtin (cooldown, event, math vb.)
2. Örnekler anlaşılır yorumlarla yazılmalıdır
3. Bir test fonksiyonu eklenmelidir

### 📝 Dokümantasyon İyileştirme
README veya yorum satırlarındaki hataları düzeltmek için doğrudan PR açabilirsiniz.

---

## Geliştirme Süreci

### 1. Fork & Clone
```bash
git clone https://github.com/KULLANICI_ADINIZ/macroEngine-tutorial.git
cd macroEngine-tutorial
```

### 2. Branch Oluştur
```bash
git checkout -b feature/yeni-ornek
# veya
git checkout -b fix/cooldown-hatasi
```

### 3. Değişikliklerini Yap

Kod yazarken şu kurallara uy:
- Her `.mcfunction` dosyası yorum satırlarıyla açıklanmalı
- Namespace: `tutorial:` kullan
- Test fonksiyonu ekle: `tutorial:modul/test`
- `test_all.mcfunction` dosyasına yeni testi ekle

### 4. Test Et
```
/reload
/function tutorial:test_all
```
Tüm testlerin geçtiğinden emin ol.

### 5. Pull Request Aç
- Değişiklikleri açık bir şekilde açıkla
- İlgili issue varsa `Closes #123` ile bağla

---

## Kod Stili

```mcfunction
# ═══════════════════════════════════════════════════════════════
# Modül Adı - Kısa Açıklama
# ═══════════════════════════════════════════════════════════════
# SENARYO: Ne yaptığını açıkla
# ═══════════════════════════════════════════════════════════════

# ───────────────────────────────────────────────────────────────
# ADIM 1: Başlık
# ───────────────────────────────────────────────────────────────
# Satırın ne yaptığını açıkla
komut burada
```

---

## Soru & Yardım

Takıldığınız bir yer varsa [Discussions](https://github.com/tickwarden/macroEngine-tutorial/discussions) üzerinden sorabilirsiniz.
