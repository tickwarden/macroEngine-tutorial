# Güvenlik Politikası

## Desteklenen Sürümler

| Sürüm | Destek |
|-------|--------|
| 1.21.5+ | ✅ Aktif |
| 1.21.x (≤1.21.4) | ⚠️ Yalnızca kritik düzeltmeler |
| < 1.21 | ❌ Desteklenmiyor |

## Güvenlik Açığı Bildirimi

Bu proje bir Minecraft datapack'idir. Sunucu ortamında çalıştığından aşağıdaki konular güvenlik kapsamında değerlendirilir:

- Komut enjeksiyonuna yol açabilecek açıklar
- Yetkisiz oyuncuların op-level komut çalıştırabilmesi
- Storage manipülasyonu ile istenmeyen davranışlar

### Nasıl Bildirirsiniz?

Açık kaynak niteliğindeki güvenlik sorunları için **GitHub Issues** kullanabilirsiniz.
Hassas/kritik açıklar için doğrudan iletişim: [GitHub profili üzerinden](https://github.com/tickwarden)

Bildirimde şunları belirtin:
1. Sorunun açıklaması
2. Yeniden üretme adımları
3. Etkilenen Minecraft ve macroEngine-dp sürümleri
4. Potansiyel etki

## Güvenlik Notları

Bu datapack yalnızca güvendiğiniz sunucularda kullanılmalıdır.
`macro:input` storage'ına doğrudan yazma yetkisi olan oyuncular fonksiyon davranışını etkileyebilir — op yetkilerini dikkatli yönetin.
