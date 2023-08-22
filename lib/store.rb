class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_at_least_one_of_mens_or_womens_apparel

  before_destroy { throw :abort if employees.count.positive? }

  private

  def must_carry_at_least_one_of_mens_or_womens_apparel
    return if mens_apparel == true || womens_apparel == true

    errors.add(:base, 'Store must carry at least one of mens or womens apparel')
  end
end
