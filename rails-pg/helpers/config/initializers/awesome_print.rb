puts "=> AwesomePrint loading... ".yellow
if Rails.env == "development"
  require "awesome_print"
  AwesomePrint.irb!
end