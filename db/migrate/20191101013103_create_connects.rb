class CreateConnects < ActiveRecord::Migration[5.2]
  def change
    create_table :connects do |t|
      t.text :about

      t.timestamps
    end
  end
end
