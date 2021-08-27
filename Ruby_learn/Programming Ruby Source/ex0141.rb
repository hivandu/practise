# Sample code from Programing Ruby, page 66
class String
 def inspect
  to_s
 end
end
def show_regexp(a, re)
  if a =~ re
    "#{$`}<<#{$&}>>#{$'}"
  else
    "no match"
  end
end
show_regexp('kangaroo', /angar/)
show_regexp('!@%&-_=+', /%&/)
