class School < ActiveRecord::Base
  has_many :teams, :order => 'teams.name', :include => :players, :dependent => :nullify
  
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :city
end
