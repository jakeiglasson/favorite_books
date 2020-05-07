# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :create, :read, :update, :destroy, to: :crud
    can :read, Book

    # may change some settngs here as it makes the users to create and update books. At least not destroy
    if user.present?
      can :create, Book
      can :update, Book

      # user ||= User.new # guest user (not logged in)
      if user.admin
        can :crud Book
        can :destroy, User
      end
    end
  end
end
