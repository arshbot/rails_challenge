task :import_csv, [:filename] => :environment do    
	Rake::Task["import_events"].execute
	Rake::Task["import_people"].execute
	Rake::Task["import_assistance"].execute
end
