require 'pry'

def hello(array)
  i = 0
  results = []
  while i < array.length
    results<<yield(array[i])
    i += 1
  end
  results
end

hello(['Tim',"Tom","Jim"]) {|name| "Hi, #{name}"}
