puts "Seconds/day: #{24*60*60}"
puts "#{"Ho! "*3}Merry Christmas!"
puts "This is line #$."

puts "Now is #{
def the(a)
  'the ' + a
end
the('time')
} for all good coders..."

puts %q/general single-quoted string/
puts %Q!general double-quoted string!
puts %Q{Seconds/day: #{24*60*60}}

string  = <<END_OF_STRING
  The body of the string
  is the input lines up to
  one ending with the same
  text that followed the '<<'
END_OF_STRING

puts string

print <<-STRING1, <<-STRING2
  Concat
  STRING1
    enate
    STRING2

puts "I change branch to master"

puts 'I change branch to testing'


class  Song
  def method_name
    puts "Some test"
  end
end

class Iss53
  def method_iss53
    puts "This is iss53"
  end
end
