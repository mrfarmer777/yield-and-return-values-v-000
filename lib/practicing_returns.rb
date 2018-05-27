require 'pry'

def hello(array)
  i = 0
  while i < array.length
    results = []
    results<<yield(array[i])
    i += 1
  end
  results
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
