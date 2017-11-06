require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import_assistance, [:filename] => :environment do    
    CSV.foreach(File.join(Rails.root, 'lib','code challenge', 'csv','assistance.csv'), :headers => true) do |row|
    	Event.find(row.to_hash['event_id']).people << Person.find(row.to_hash['person_id'])
    end
end