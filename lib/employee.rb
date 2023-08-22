class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :store
  validates :store_id, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

  after_create { update('password': generate_random_string(8)) }

  private

  def generate_random_string(length)
    o = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
    (0...length).map { o[rand(o.length)] }.join
  end
end
