class CreateSubtopics < ActiveRecord::Migration
  def change
    create_table :subtopics do |t|
      t.string :name
      t.integer :number
      t.string :slug, :unique => true
      t.references :topic, index: true

      t.timestamps
    end
  end
end
