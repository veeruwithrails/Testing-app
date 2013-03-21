class CreateAdds < ActiveRecord::Migration
  def change
    create_table :adds do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
