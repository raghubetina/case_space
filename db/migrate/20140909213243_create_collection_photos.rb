class CreateCollectionPhotos < ActiveRecord::Migration
  def change
    create_table :collection_photos do |t|
      t.belongs_to :collection, index: true
      t.belongs_to :photo, index: true

      t.timestamps
    end
  end
end
