class BabyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      true
    end

    def show?
      true
    end

    def create?
      true
    end

    def new?
      create?
    end

    def update?
      record.user == user
    end

    def edit?
      update?
    end

    def destroy?
      update?
    end
end
