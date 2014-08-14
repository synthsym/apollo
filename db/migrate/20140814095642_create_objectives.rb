class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :name
      t.references :subtopic, index: true

      t.timestamps
    end
  end
end
