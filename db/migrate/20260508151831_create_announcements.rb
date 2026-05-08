class CreateAnnouncements < ActiveRecord::Migration[8.1]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :content
      t.integer :importance
      t.datetime :expires_at

      t.timestamps
    end
  end
end
