def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end
call_block {puts "In the block"}

puts "\n"

def who_says_what
  yield("Dave", "hello")
  yield("Andy", "goodbye")
end
who_says_what {|person, phrase| puts "#{person} says #{phrase}"}

puts "\n"

animals = %w( ant bee cat dog elk )
animals.each {|animal| puts animal }

puts "\n"

[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
5.times { print "*" }
3.upto(6) {|i| print i}
('a'..'e').each {|char| print char }