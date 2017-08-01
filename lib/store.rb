class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 2 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_have_mens_or_womens_apparel

  def must_have_mens_or_womens_apparel
    unless mens_apparel.present? || womens_apparel.present?
      erros.add(:mens_apparel, "must be sold.")
end

