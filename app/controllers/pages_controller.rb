# The pages controller contains all of the code for any page inside of /pages
class PagesController < ApplicationController
  
  # back-end code for pages/index
  def index
  end

# back-ned code for pages/home
  def home
  end
# back-ned code for pages/profile

  def profile
    # grab the username from the URL as :id
    if(User.find_by_username(params[:id]))
    @username = params[:id]
  else
    # redirect to 404
    redirect_to root_path, :notice=> "User not found!"
  end
end
# back-ned code for pages/eplore

  def eplore
  end
end
