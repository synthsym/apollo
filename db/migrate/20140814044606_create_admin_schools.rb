class CreateAdminSchools < ActiveRecord::Migration
  def change
    create_table :admin_schools do |t|
      t.string :name
      t.string :acronym

      t.timestamps
    end
  end
end
