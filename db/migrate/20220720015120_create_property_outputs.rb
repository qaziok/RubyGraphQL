class CreatePropertyOutputs < ActiveRecord::Migration[7.0]
  def change
    create_table :property_outputs do |t|

      t.timestamps
    end
  end
end
