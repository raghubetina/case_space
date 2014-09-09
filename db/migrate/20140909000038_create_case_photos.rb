class CreateCasePhotos < ActiveRecord::Migration
  def change
    create_table :case_photos do |t|
      t.belongs_to :photo, index: true
      t.belongs_to :case, index: true

      t.timestamps
    end
  end
end
