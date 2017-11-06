class CreateEventsAndPeople < ActiveRecord::Migration[5.1]
  def change
    create_join_table :events, :people do |t|
    	t.index [:event_id, :product_id]
    end
  end
end

