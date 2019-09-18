require 'csv'

class Generator
  def initialize(array)
    @array = array
    @counter = 0
  end

  def randomised_array
    @array.shuffle
  end

  def create_title
    @counter += 1
    "words_#{@counter}.csv" 
  end

  def generate_csv
    CSV.open(create_title, 'w') do |csv_obj|
      csv_obj << randomised_array
    end
  end
end

generator = Generator.new([1, 2, 3, 4, 5])
generator.generate_csv
generator.generate_csv