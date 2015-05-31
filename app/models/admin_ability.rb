class AdminAbility
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    end
  end
end
