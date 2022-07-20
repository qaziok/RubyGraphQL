class CreateOffersOutputs < ActiveRecord::Migration[7.0]
  def change
    create_table :offers_outputs do |t|

      t.timestamps
    end
  end
end
