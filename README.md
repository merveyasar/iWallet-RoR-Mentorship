# 🚀 iWallet Gelişim Yolculuğu - Bölüm 1: Ruby & Rails Temelleri

Bu dosya, projenin teknik gelişim aşamalarını ve öğrenilen temel kavramları kayıt altında tutmak amacıyla oluşturulmuştur.

iWallet-Development projesinin backend temellerini atmak için WSL (Windows Subsystem for Linux) üzerinde Ruby on Rails ortamını kurdum ve ilk adımları tamamladım.

### 🛠 Yapılan Kurulumlar ve Hazırlıklar
* **WSL & Ubuntu:** Geliştirme ortamı tamamen Linux (Ubuntu) üzerine taşındı.
* **Ruby & Rails:** Ruby dili ve Rails framework'ü sistemde işler hale getirildi.
* **VS Code Entegrasyonu:** `code .` komutu ve WSL eklentisiyle Linux dosya sistemine Windows üzerinden erişim sağlandı.

### 💎 Ruby Öğrenim Notları (Pure Ruby)
[Try Ruby](https://try.ruby-lang.org/) üzerindeki tüm interaktif eğitim tamamlandı. GoRails sitesindeki RubyForBeginners videolarına denk geldiğinden onlarda izlenerek tamamlandı.
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



## 📅 Tarih: 5-6-7 Mayıs 2026

### 🏛 Modern CRUD ve "Ankara Modern" Tasarımı
Projenin ilk fonksiyonel modülü olan **Announcements (Duyurular)** üzerinden Rails'ın derinliklerine inildi. Sadece veri eklemekle kalınmadı, bu verilerin yönetimi profesyonel standartlara taşındı.

*   **Dinamik Form Yönetimi (`form_with`):** Rails'ın nesne tabanlı form yapısı kavrandı. `@announcement.persisted?` kontrolü ile tek bir formun hem **Yeni Kayıt (Add)** hem de **Güncelleme (Edit)** işlemlerini nasıl otomatik ayırt ettiği öğrenildi.
*   **Gelişmiş Validasyonlar ve Hata Yönetimi:** Model seviyesinde `presence` kontrolleri samimi ve özelleştirilmiş Türkçe mesajlarla yapılandırıldı. Rails 6.1+ ile gelen yeni hata nesnesi yapısı üzerinden `.map(&:message)` ile sadece özel mesajların süzülme mantığı uygulandı.
*   **ActiveRecord Scopes:** Veritabanı sorgularını "Skinny Controller" prensibiyle yönetmek için `scope` yapısı kullanıldı. 
    *   `active`: Süresi geçmemiş ilanları filtreleme.
    *   `high_priority`: Önem derecesine göre anlık veri çekme.
*   **UI/UX & SweetAlert2 Entegrasyonu:** Rails'ın standart `flash` mesajlarını yakalayan bir JavaScript köprüsü kurularak, sistem uyarıları modern **SweetAlert2** kütüphanesiyle görselleştirildi.
