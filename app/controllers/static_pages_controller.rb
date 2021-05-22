class StaticPagesController < ApplicationController
  skip_before_action :require_login, only: %i[top]
<<<<<<< HEAD

=======
>>>>>>> master
  def top; end
end
