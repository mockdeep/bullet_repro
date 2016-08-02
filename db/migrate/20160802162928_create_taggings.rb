class CreateTaggings < ActiveRecord::Migration

  def change
    create_table :taggings do |t|
      t.references :item, index: true, foreign_key: true, null: false
      t.references :tag, index: true, foreign_key: true, null: false
    end
  end

end
