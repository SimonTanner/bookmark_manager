feature 'Creating new links' do
  scenario 'Allows the user to create new links' do
    visit '/links/new'
    #click_button('Add link')
    fill_in 'url', with: 'www.makersacademy.com'
    fill_in 'title', with: 'Maker\'s Academy Homepage'
    click_button('Create')
    expect(current_path).to eq '/links'
    
    within 'ul#links' do
      expect(page).to have_content('Maker\'s Academy Homepage')
    end
  end
end
