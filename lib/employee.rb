class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true 
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than:200 }
  validates :store_id, presence: true  

  before_create :create_password

  def create_password
    password_characters = (0..8).map do
      (65 + rand(26)).chr #get uppercase letters
    end
    self.password = password_characters.join
    puts "Generated password: #{self.password}"
  end
end
