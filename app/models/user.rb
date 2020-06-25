# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  belongs_to :role, optional: true
  has_many :items, dependent: :destroy

  validates :name, presence: true

  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: 'Regular' if role.nil?
  end

  def admin?
    role.name == 'Admin'
  end

  def seller?
    role.name == 'Seller'
  end

  def regular?
    role.name == 'Regular'
  end
end
