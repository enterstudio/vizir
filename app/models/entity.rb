class Entity < ActiveRecord::Base
  attr_accessible :name

  validates :name,
    :uniqueness => true,
    :presence => true

  has_many :instances, :inverse_of => :entity, :dependent => :destroy
  has_many :metrics, :through => :instances
  has_many :graphs, :through => :instances
end