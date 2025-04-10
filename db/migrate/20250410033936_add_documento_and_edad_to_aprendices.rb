class AddDocumentoAndEdadToAprendices < ActiveRecord::Migration[8.0]
  def change
    add_column :aprendices, :documento, :string
    add_column :aprendices, :edad, :integer
  end
end
