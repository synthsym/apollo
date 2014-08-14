class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.references :curriculum, index: true

      t.timestamps
    end
  end
end
