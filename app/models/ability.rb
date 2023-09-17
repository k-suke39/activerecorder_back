# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
      can :read, User
      cannot :delete, User
      cannot :update, User
      cannot :create, User
  end
end