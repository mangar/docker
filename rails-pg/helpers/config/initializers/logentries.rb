if ENV['LOGENTRIES_TOKEN']
  puts "=> LogEntries initialized ".yellow
  $log = Le.new(ENV['LOGENTRIES_TOKEN'], :debug => true, :local => true)
else
  puts "=> LogEntries not initialized. Missing ENV['LOGENTRIES_TOKEN'] ".red
end