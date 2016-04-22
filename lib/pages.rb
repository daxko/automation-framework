Dir["#{File.dirname(__FILE__)}/pages/**/*_page.rb"].each do |page|
  load page
end
