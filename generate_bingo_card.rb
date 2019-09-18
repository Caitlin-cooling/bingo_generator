require 'csv'

class Generator
  def initialize(array, row_length, amount)
    @array = array
    @amount = amount
    @row_length = row_length
    @counter = 0
    @rows = []
  end

  def create_rows
    array = randomised_array
    until array.length == 0 do
      @rows << array.slice!(0..@row_length-1)
    end
    @rows
  end

  def randomised_array
    @array.shuffle
  end

  def populate_csv
    CSV.open('words.csv', 'w') do |csv_obj|
      @amount.times do 
        csv_obj << ["Bingo Sheet"]
        create_rows.each { |row| csv_obj << row }
        csv_obj << [""]
        @rows = []
      end
    end
  end
end


code_101_words = [
  'Continuous Integration',
  'Coding Languages', 
  'Test Coverage',
  'Open Source',
  'Microservices vs Monolith',
  'Proof-of-Concept & Prototypes',
  'Continuous Deployment',
  'Automated Testing',
  'Version Control',
  'Serverless',
  'Back end vs Front end',
  'API',
  'CI/CD Pipeline',
  'Caching',
  'Latency',
  'Software Delivery Lifecycle',
  'JavaScript',
  'BDD & TDD',
  'DevOps',
  'Ubiquitous Language',
  'Technical Debt & Refactoring',
  'Vanilla vs Library vs Framework',
  'Test Doubles',
  'Software as a Service',
  'Docker & Kubernetes'
]
generator = Generator.new(code_101_words, 5 ,3)
generator.populate_csv

# generator = Generator.new([1, 2, 3, 4, 5, 6], 3, 3)
# generator.populate_csv