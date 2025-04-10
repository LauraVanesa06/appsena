class AddFichaProgramaToAprendices < ActiveRecord::Migration[8.0]
  def change
    add_reference :aprendices, :ficha, null: true, foreign_key: true
  end
end
