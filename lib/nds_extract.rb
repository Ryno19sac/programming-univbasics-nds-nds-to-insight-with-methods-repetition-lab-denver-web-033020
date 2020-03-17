$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'
def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source) 
  index = [] 
 i = 0
  while i < source.length do
    index << source[i][:name]
    i += 1
  
  # Write this implementation
end
index
  
end

def total_gross(nds) 
   
  director_index = 0
  totals = 0
   
  while director_index < nds[:movies].length do
   totals += nds[:movies][director_index][:worldwide_gross]
    director_index += 1 
    
  end
  
  return totals

end
