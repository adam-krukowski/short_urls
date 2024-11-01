class CreateShortUrls < ActiveRecord::Migration[7.1]
  def change
    create_table :short_urls do |t|
      t.string :slug
      t.text :note
      t.string :target_url
      t.integer :clicks_count, default: 0

      t.timestamps
    end
  end
end
