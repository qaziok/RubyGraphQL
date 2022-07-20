class CreateSearchOutputs < ActiveRecord::Migration[7.0]
  def change
    create_table :search_outputs do |t|

      t.timestamps
    end
  end
end
