require "pry"

array = [["a","b","c"],["a","b","c"],["a","b","c"]]
i = 0
result = ""
 3.times do
   result = array.reduce(result) do |accum, letter|
     accum += letter[i]
     accum
   end
   i+=1
   result += "\n"
   binding.pry
 end
