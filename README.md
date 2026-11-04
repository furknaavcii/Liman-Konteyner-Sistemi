# Liman-Konteyner-Sistemi
Üniversite projesi için Liman ve Konteyner Operasyon Sistemi
Bu proje; liman içi konteyner hareketlerini, depolama alanlarını, gemi yükleme ve boşaltma işlemlerini düzenli bir şekilde takip etmek için geliştirilecek olan  bir yazılım sistemidir. Limandaki genel süreçleri dijital ortamda yönetmeyi amaçlar.
Temel Özellikler
* Konteynerlerin limana girişi, saha içi takibi ve çıkış işlemleri
* Gemi yükleme ve tahliye süreçlerinin planlanması
* SQL Server üzerinden dinamik veri ekleme, silme, güncelleme ve listeleme işlemleri
* Personel ve kullanıcı yetkilendirme altyapısı
* ## Proje Dosyaları
* **schema.sql**: Veritabanı tablolarının iskeletini ve yabancı anahtar (Foreign Key) ilişkilerini oluşturan SQL kodları.
* **insert.sql**: Tabloları dolduran devasa ve gerçekçi örnek veri setleri (Gemiler, rıhtımlar, konteynerler, saha blokları, vinçler, personel ve hareket kayıtları).

## Veritabanı Tablo Yapısı (8 Ana Tablo)
1. **Gemiler**: Limana gelen gemilerin adını, bayrağını, TEU kapasitesini ve varış tarihlerini tutar.
2. **Rihtimlar**: Gemilerin yanaştığı rıhtım adlarını, maksimum kapasitelerini ve doluluk durumlarını tanımlar.
3. **Konteynerler**: Konteyner numaralarını, tiplerini (20ft/40ft), ağırlıklarını ve ait oldukları firmaları tutar.
4. **Saha_Bloklari**: Liman içerisindeki depolama alanlarının blok kodlarını ve kapasite durumlarını takip eder.
5. **Vincler**: Liman içi yükleme yapan rıhtım (STS) ve saha (RTG) vinçleri ile durumlarını kaydeder.
6. **Personeller_Operatorler**: Vinç operatörleri, liman memurları ve vardiya amirlerinin iletişim bilgilerini tutar.
7. **Gemi_Operasyonlari**: Hangi geminin hangi rıhtımda ne zaman yanaşıp ayrıldığının operasyon kaydını tutar.
8. **Konteyner_Hareketleri**: Konteynerlerin sahada hangi blokta, hangi vinç ve personel eliyle taşındığının detaylı geçmiş hareketlerini tutar.
