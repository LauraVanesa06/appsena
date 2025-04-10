class CreateAprendices < ActiveRecord::Migration[8.0]
  def change
    create_table :aprendices do |t|
      t.string :nombre
      t.string :documento
      t.string :edad

      t.timestamps
    end
  end
end
