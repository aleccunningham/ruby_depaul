class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|

      t.timestamps
    end
  end
end
