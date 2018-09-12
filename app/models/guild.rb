class Guild < ApplicationRecord
  validates :gname,presence: true,length: { maximum: 30 }, uniqueness: true
   has_secure_password
   validates :password, presence: true, length: { minimum: 8 }
end
