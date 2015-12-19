class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.id?
      can :manage, Campaign
      can :manage, Pet
      can :manage, Color
      can :manage, Shape
      can :manage, User
      else
      can :read, Campaign
    end
  end
end
