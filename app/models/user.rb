class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,  password_length: 6..10

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with:  VALID_PASSWORD_REGEX, message: 'は半角英数を両方含む必要があります'
  validates :nick_name, presence: true, length: { maximum: 10 }
  


  has_many :recipes
end
