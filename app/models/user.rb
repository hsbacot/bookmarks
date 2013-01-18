class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  # attr_accessible :title, :body

  validates :username, :presence => true, :uniqueness => true, :length => { :minimum => 3, :maximum => 30 }

  # Creates User Profile
  has_one :user_profile

  has_many :bookmarks

  # after_create :create_child
  #   	UserProfile.create("user_id" => :id)

end
