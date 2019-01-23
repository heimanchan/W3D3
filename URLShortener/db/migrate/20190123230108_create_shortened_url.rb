class CreateShortenedUrl < ActiveRecord::Migration[5.1]
  def change
    create_table :shortened_urls do |t|
      t.integer :user_id 
      t.string :long_url
      t.string :short_url

      t.timestamps
    end

    add_index :shortened_urls, :user_id
  end
end
