class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :note
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
