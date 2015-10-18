class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.id?
      can :manage, Campaign
      else
      can :read, Campaign
    end
  end
end
