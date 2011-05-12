class Contact < ActiveRecord::Base

  validates :nom, :presence => true, :uniqueness => true
  validates :categories, :presence => true

  has_many :users, :as => :userable, :dependent => :destroy
  accepts_nested_attributes_for :users, :reject_if =>  lambda { |a| a[:nom].blank? }, :allow_destroy => true
end
