class Case < ActiveRecord::Base
  attr_accessible :casenum, :name, :insurance, :treatmentplan

  validates :casenum, presence => true
  validates :name, :presence => true,
  # validates :insurance, :presence => true,
  # validates :treatmentplan, :presence => true

  has_many :patients
  has_many :doctors, :through => :patients
end
