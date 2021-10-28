module ApplicationHelper
  def admin_user
    a = '0774036166at@gmail.com'
    c = '07740361666at@gmail.com'
    b = current_user.email

    a == b || c == b ? true : false
  end

  def check_user
    unless admin_user
      redirect_to warehouses_url
    end
  end
end
