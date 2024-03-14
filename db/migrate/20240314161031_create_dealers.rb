class CreateDealers < ActiveRecord::Migration[7.1]
  def change
    create_table :dealers do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
