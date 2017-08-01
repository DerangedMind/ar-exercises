class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, 
            :last_name, 
              presence: true

  validates :hourly_rate,
              numericality: { 
                only_integer: true, 
                greater_than_or_equal_to: 40, 
                less_than_or_equal_to: 200 
              }

  before_create :create_random_password

  def create_random_password
    self.password = rand(36**11).to_s(36).upcase[0,8]
  end
end
