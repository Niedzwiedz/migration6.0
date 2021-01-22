class CreateMigs < ActiveRecord::Migration[6.0]
  def change
    create_table :migs do |t|
      t.string :tenant_name

      t.timestamps
    end
  end
end
