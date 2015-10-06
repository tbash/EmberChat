class User < ActiveRecord::Base
  validates_uniqueness_of :email, :name
  validates_presence_of :email, :name
  validates :name, format: { with: /\A([^@\s]+)\Z/ }
end
