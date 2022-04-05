class Store < ActiveRecord::Base
  @@store_count = 0

  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: -1 }
  validate :must_carry_mens_or_womens_apparel

  #Validation
  def must_carry_mens_or_womens_apparel
    if !(mens_apparel || womens_apparel)
      errors.add(:mens_apparel, "must carry mens or womens apparel")
      errors.add(:womens_apparel, "must carry mens or womens apparel")
    end
  end

  def self.store_count
    @@store_count
  end

  private

  after_create do
    @@store_count += 1
  end

  after_destroy do
    @@store_count -= 1
  end

  before_destroy do 
    self.employees.count == 0 #Preclude destruction of stores with employees
  end

  
end
