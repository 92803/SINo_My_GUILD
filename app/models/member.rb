class Member < ApplicationRecord
  validates :m_name,presence: true,length: {maximum: 10},uniqueness: true
  validates :role,presence: true
  validates :job,presence: true,length: {maximum: 10}

end
