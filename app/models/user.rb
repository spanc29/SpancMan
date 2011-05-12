class User < ActiveRecord::Base

  acts_as_audited

  attr_accessor :password
  before_save :prepare_password

  belongs_to :userable, :polymorphic => true

  has_many :adresses, :as => :adressable, :dependent => :destroy
  accepts_nested_attributes_for :adresses, :reject_if =>  lambda { |a| a[:commune].blank? }, :allow_destroy => true
  has_many :phones, :as => :phonable, :dependent => :destroy
  accepts_nested_attributes_for :phones, :reject_if =>  lambda { |a| a[:numero].blank? }, :allow_destroy => true
  has_many :mails, :as => :mailable, :dependent => :destroy
  accepts_nested_attributes_for :mails, :reject_if =>  lambda { |a| a[:email].blank? }, :allow_destroy => true



  validates_presence_of :username
  #validates_uniqueness_of :email, :allow_blank => true
  ## validates_format_of :username, :with => /^[-\w\._@]+$/i, :allow_blank => true, :message => "doit contenir que des lettres ou chiffres (.-_@ autorisé)"
  #validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  #validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  #validates_length_of :password, :minimum => 4, :allow_blank => true

  scope :proprio_destinat, where(:immeuble_id != nil && :destinataire => true)



  # login can be either username or email address
  def self.authenticate(login, pass)
    user = find_by_username(login) || find_by_email(login)
    return user if user && user.password_hash == user.encrypt_password(pass)
  end

  def encrypt_password(pass)
    BCrypt::Engine.hash_secret(pass, password_salt)
  end

  private

  def prepare_password
    unless password.blank?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = encrypt_password(password)
    end
  end
end
