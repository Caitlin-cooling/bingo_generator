require 'csv'

class Generator
  def initialize(array, amount)
    @array = array
    @amount = amount
    @counter = 0
  end

  def randomised_array
    @array.shuffle
  end

  def populate_csv
    CSV.open('words.csv', 'w') do |csv_obj|
      @amount.times do 
        csv_obj << ["Bingo Sheet"]
        csv_obj << randomised_array
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
generator = Generator.new(code_101_words, 4)
generator.populate_csv