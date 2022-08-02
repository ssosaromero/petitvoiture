class CreateSteelpainters < ActiveRecord::Migration[6.1]
  def change
    create_table :steelpainters do |t|
      t.string :name

      t.timestamps
    end
  end
end
