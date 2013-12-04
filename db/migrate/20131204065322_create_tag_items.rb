class CreateTagItems < ActiveRecord::Migration
  def change
    create_table :tag_items do |t|
    	t.integer :article_id
    	t.integer :tag_id

      t.timestamps
    end
  end
end
