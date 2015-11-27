require "rails_helper"

feature "Contact Creation" do
	scenario "allows access to contact page" do
		visit '/contacts'

		expect(page).to have_content I18n.t('contacts.contact_us')
	end

  scenario "allows a guest to create contact" do
    visit '/contacts'

    fill_in :contact_email, :with => 'user@email.ru'
    fill_in :contact_message, :with => 'something'
    
    click_button 'Send Message'

    expect(page).to have_content 'Thank you!'
  end
end