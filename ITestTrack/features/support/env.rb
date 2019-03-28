require 'watir-webdriver'

puts "Env File"

browser = Watir::Browser.new :chrome

Before do
  @browser=browser
  #@data = YAML.safe_load(IO.read('features/support/data.yaml'))
  @data = YAML.safe_load(IO.read("features/data/"+ ENV['ENV']+".yaml"))
  puts "this is before my test starts"
end
