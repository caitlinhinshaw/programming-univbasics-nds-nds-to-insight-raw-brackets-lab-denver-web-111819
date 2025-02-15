$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  result = {}
  director_index = 0
  while director_index < nds.length
    movie_index = 0
    sum = 0
    key = nds[director_index][:name]
    while movie_index < nds[director_index][:movies].length
      sum += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    result[key] = sum
    director_index += 1
  end
  result
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end

directors_totals(directors_database)
