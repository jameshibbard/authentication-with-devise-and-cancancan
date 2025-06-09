# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elsif user.seller?
      can :read, Item
      can :create, Item
      can :update, Item do |item|
        item.try(:user) == user
      end
      can :destroy, Item do |item|
        item.try(:user) == user
      end
    elsif user.regular?
      can :read, Item
    end
  end
end
