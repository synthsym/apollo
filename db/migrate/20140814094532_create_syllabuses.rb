class CreateSyllabuses < ActiveRecord::Migration
  def change
    create_table :syllabuses do |t|
      t.string :version
      t.references :subject, index: true

      t.timestamps
    end
  end
end
