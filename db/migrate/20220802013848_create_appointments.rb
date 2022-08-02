class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.text :description
      t.references :mechanical, null: false, foreign_key: true
      t.references :steelpainter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
