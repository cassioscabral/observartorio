class NoticiasController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:show]
end
