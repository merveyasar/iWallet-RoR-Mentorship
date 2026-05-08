class Announcement < ApplicationRecord
  enum :importance, { low: 0, medium: 1, high: 2 }, default: :low

  validates :title, presence: { message: "Başlıksız ilan mı olur? Boş bırakma burayı." }
  validates :content, presence: { message: "Komşularına anlatacak bir şeylerin olmalı, içeriği doldur." }
  validates :importance, presence: { message: "Bu ilanın aciliyeti ne? Bir seviye seçmelisin." }

  def expired?
    expires_at.present? && expires_at < Time.current
  end

  scope :active, -> { where("expires_at IS NULL OR expires_at > ?", Time.current) }

  scope :ordered, -> { order(importance: :desc, created_at: :desc) }
end
