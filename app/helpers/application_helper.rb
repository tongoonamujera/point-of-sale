module ApplicationHelper
  def admin_user
    a = '0774036166at@gmail.com'
    b = current_user.email
    
    a == b ? true : false
  end

  def check_user
    unless admin_user
      redirect_to warehouses_url
    end
  end
end
