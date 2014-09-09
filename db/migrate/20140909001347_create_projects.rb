class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :note
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
