def sign_up
    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'user'
    fill_in :user_password, :with => 'secure123!@#'
    fill_in :user_password_confirmation, :with => 'secure123!@#'

    click_button 'Sign up'

end