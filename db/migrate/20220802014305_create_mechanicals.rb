class CreateMechanicals < ActiveRecord::Migration[6.1]
  def change
    create_table :mechanicals do |t|
      t.string :name

      t.timestamps
    end
  end
end
