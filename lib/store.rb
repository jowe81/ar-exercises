class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: -1 }
  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    if !(mens_apparel || womens_apparel)
      errors.add(:mens_apparel, "must carry mens or womens apparel")
      errors.add(:womens_apparel, "must carry mens or womens apparel")
    end
  end
end
