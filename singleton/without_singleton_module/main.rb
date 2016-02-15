$LOAD_PATH.unshift('.')

require 'my_singleton'
require 'my_subclass_singleton'

ms = MySingleton.instance

puts ms

ms2 = MySingleton.instance

puts ms

puts ms==ms2

begin
  MySingleton.new
rescue NoMethodError => ex
  puts "Cannot initialize with .new"
end

mss = MySubclassSingleton.instance
puts mss

mss2 = MySubclassSingleton.instance
puts mss2

puts mss == mss2

begin
  MySubclassSingleton.new
rescue NoMethodError
  puts "Cannot initialize with .new"
end