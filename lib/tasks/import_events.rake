require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import_events, [:filename] => :environment do    
    CSV.foreach(File.join(Rails.root, 'lib','code challenge', 'csv','events.csv'), :headers => true) do |row|
      Event.create!(row.to_hash)
    end
end