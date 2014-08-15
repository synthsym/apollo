class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :number
      t.string :slug, :unique => true
      t.references :syllabus, index: true

      t.timestamps
    end
  end
end
