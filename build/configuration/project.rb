config = 
{
  :course_name => "Shaw-August 2011",
  :project => "nothinbutdotnetprep",
  :target => "Debug",
  :source_dir => "source",
  :app_dir => delayed{configatron.artifacts_dir},
  :all_references => UniqueFiles.new(Dir.glob("packages/**/*.{dll,exe}")).all_files,
  :artifacts_dir => "artifacts",
  :config_dir => "source/config",
  :app_dir => delayed{"source/#{configatron.project}"},
  :log_file_name => delayed{"#{configatron.project}_log.txt"},
  :log_level => "DEBUG"
}
configatron.configure_from_hash config
