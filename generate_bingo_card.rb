require 'csv'

def randomise(array)
  array.shuffle
end

def print_to_csv(array)
  CSV.open('words.csv', 'w') do |csv_obj|
    csv_obj << array
  end
end

def generate_bingo_card(array)
  print_to_csv(randomise(array))
end

generate_bingo_card([1, 2, 3, 4, 5])