class Contact < ActiveRecord::Base
  acts_as_audited

  validates :nom, :presence => true, :uniqueness => true
  validates :categories, :presence => true

  has_many :users, :as => :userable, :dependent => :destroy
  accepts_nested_attributes_for :users, :allow_destroy => true

  scope :categorie, group(:categories)
  scope :vidangeur, where(:categories => "162")
end
