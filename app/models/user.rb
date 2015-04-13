class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  has_many :items
  validates_presence_of :name
  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: 'Regular' if self.role.nil?
  end

  def admin?
    self.role.name == 'Admin'
  end

  def seller?
    self.role.name == 'Seller'
  end

  def regular?
    self.role.name == 'Regular'
  end

  def password_required?
    super if confirmed?
  end

  def password_match?
    self.errors[:password] << "can't be blank" if password.blank?
    self.errors[:password_confirmation] << "can't be blank" if password_confirmation.blank?
    self.errors[:password_confirmation] << 'does not match password' if password != password_confirmation
    password == password_confirmation && !password.blank?
  end
end
