class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role
  has_many :items, dependent: :destroy
  before_validation :assign_role
  validates :name, presence: true

  def assign_role
    self.role = Role.find_by name: "Regular" if role.nil?
  end
end
