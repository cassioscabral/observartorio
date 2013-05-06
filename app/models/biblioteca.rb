class Biblioteca < ActiveRecord::Base
  attr_accessible :categoria, :titulo, :assets_attributes
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true
end
