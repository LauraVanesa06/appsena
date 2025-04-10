class AddCarIdToPersonas < ActiveRecord::Migration[8.0]
  def change
    add_reference :personas, :car, null: false, foreign_key: true
  end
end
