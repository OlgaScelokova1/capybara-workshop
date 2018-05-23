class Pages
  def page_home
    @page_home ||= HomePage.new
    @page_home
  end

  def sign_up_page
    @sign_up_page ||= SignUpPage.new
    @sign_up_page
  end

  def login_page
    @login_page ||= LoginPage.new
    @login_page
  end
end
