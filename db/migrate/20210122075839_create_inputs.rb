class CreateInputs < ActiveRecord::Migration[6.0]
  def change
    create_table :inputs do |t|
      t.string :name
      t.json :input

      t.timestamps
    end
  end
end
