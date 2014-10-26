class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :tweet_id
      t.string :media_type
      t.text :media_url

      t.timestamps
    end
  end
end
