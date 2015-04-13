class AdminAbility
  include CanCan::Ability
  
  def initialize(user)
    if user.role? :admin
      can :manage, :all
    end
  end
end
