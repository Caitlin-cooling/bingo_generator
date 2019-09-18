require 'csv'

class Generator
  def initialize(array)
    @array = array
  end

  def randomise
    @array.shuffle
  end

  def generate_csv
    CSV.open('words.csv', 'w') do |csv_obj|
      csv_obj << randomise
    end
  end
end

generator = Generator.new([1, 2, 3, 4, 5])
generator.generate_csv