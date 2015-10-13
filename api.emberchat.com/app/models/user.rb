class User < ActiveRecord::Base
  validates_uniqueness_of :email, :name
  validates_presence_of :email, :name
  validates :name, format: { with: /\A([^@\s]+)\Z/ }
  has_and_belongs_to_many :rooms
  has_many :messages

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
