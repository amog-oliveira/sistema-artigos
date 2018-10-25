class ArticlePolicy < ApplicationPolicy
   class Scope < Scope
    def resolve
      scope.all 
    end
  end

  def index?
    user.admin? || record.user == user
  end

  def new?
    user.admin? || record.user == user
  end
  
  def create?
    user.admin? || record.user == user
  end
  
  def show? 
    user.admin? || record.user == user
  end
  
  def edit? 
    user.admin? || record.user == user
  end
  
  def update?
    user.admin? || record.user == user
  end

  def destroy?
    user.admin? || record.user == user
  end  

end
