class CreateProjectPhotos < ActiveRecord::Migration
  def change
    create_table :project_photos do |t|
      t.belongs_to :photo, index: true
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
