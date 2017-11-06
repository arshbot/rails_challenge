require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import_people, [:filename] => :environment do    
    CSV.foreach(File.join(Rails.root, 'lib','code challenge', 'csv','people.csv'), :encoding => 'windows-1251:utf-8', :headers => true) do |row|
      Person.create!(row.to_hash)
    end
end