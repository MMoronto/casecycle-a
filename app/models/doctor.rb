class Doctor < ApplicationRecord
  has_secure_password
  has_many :patients
  has_many :treatments, :through => :patients

end
