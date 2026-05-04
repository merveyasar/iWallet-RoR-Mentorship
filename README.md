# 🚀 iWallet Gelişim Yolculuğu - Bölüm 1: Ruby & Rails Temelleri

Bu dosya, projenin teknik gelişim aşamalarını ve öğrenilen temel kavramları kayıt altında tutmak amacıyla oluşturulmuştur.

## 📅 Tarih: 4 Mayıs 2026

Bugün, iWallet-Development projesinin backend temellerini atmak için WSL (Windows Subsystem for Linux) üzerinde Ruby on Rails ortamını kurdum ve ilk adımları tamamladım.

### 🛠 Yapılan Kurulumlar ve Hazırlıklar
* **WSL & Ubuntu:** Geliştirme ortamı tamamen Linux (Ubuntu) üzerine taşındı.
* **Ruby & Rails:** Ruby dili ve Rails framework'ü sistemde işler hale getirildi.
* **VS Code Entegrasyonu:** `code .` komutu ve WSL eklentisiyle Linux dosya sistemine Windows üzerinden erişim sağlandı.

### 💎 Ruby Öğrenim Notları (Pure Ruby)
[Try Ruby](https://try.ruby-lang.org/) üzerindeki tüm interaktif eğitim tamamlandı. Ruby'nin "insan mutluluğu" odaklı felsefesi ve nesne yönelimli (OOP) yapısı üzerine çalışıldı.
* **Sınıflar (Classes):** `Blurbalizer` ve `Blurb` sınıfları üzerinden Ruby'nin sınıfları nasıl yönettiği kavrandı.
* **Instance Variables (`@`):** Değişkenlerin sınıfa özel (instance-based) saklanma mantığı öğrenildi.
* **Shovel Operator (`<<`):** Dizilere (Arrays) veri ekleme yöntemi pratik edildi.
* **Metot Zincirleme (Method Chaining):** `.sort_by`, `.reverse` ve `.each` metotlarının bir arada kullanımıyla verilerin nasıl işlendiği görüldü.

### 🚂 Rails'a Giriş: İlk Ayaklandırma
Rails framework'ünün **MVC (Model-View-Controller)** yapısı üzerine teorik ve pratik başlangıç yapıldı.
* **API vs Base:** Projenin başlangıçta `--api` moduyla kurulması ve HTML render edebilmek için `ActionController::Base` geçişinin önemi fark edildi.
* **Routing:** `config/routes.rb` üzerinden URL yollarının nasıl tanımlandığı öğrenildi.
* **Controller-View Bağlantısı:** Controller içindeki metotların, `app/views` altındaki HTML.ERB dosyalarıyla olan otomatik eşleşme mantığı çözüldü.
* **Migrations:** Veritabanı şemasını Ruby üzerinden yönetme (Migration dosyaları ve `db:migrate`) prensibi kavrandı.
