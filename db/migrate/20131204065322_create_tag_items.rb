class CreateTagItems < ActiveRecord::Migration
  def change
    create_table :tag_items do |t|

      t.timestamps
    end
  end
end