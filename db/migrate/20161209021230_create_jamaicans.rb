class CreateJamaicans < ActiveRecord::Migration[5.0]
  def change
    create_table :jamaicans do |t|
      t.string :first_name
      t.string :last_name
      t.integer :position

      t.timestamps
    end
  end
end
