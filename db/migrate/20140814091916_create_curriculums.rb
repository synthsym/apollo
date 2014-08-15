class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :name
      t.string :slug, :unique => true

      t.timestamps
    end
  end
end
