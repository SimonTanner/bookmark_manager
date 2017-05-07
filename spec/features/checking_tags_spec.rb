feature 'View a list of urls with the same tag' do
  before(:each) do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tags: [Tag.first_or_create(name: 'education')])
    Link.create(url: 'http://www.google.com', title: 'Google', tags: [Tag.first_or_create(name: 'search')])
    Link.create(url: 'http://www.hotmail.com', title: 'Hotmail', tags: [Tag.first_or_create(name: 'email')])
    Link.create(url: 'http://www.gmail.com', title: 'Gmail', tags: [Tag.first_or_create(name: 'email')])

  end
  scenario 'Can view a list of urls with the tag \'Emails\'' do
    visit '/tags/email'
    expect(page).to_not have_content('Makers Academy')
    expect(page).to_not have_content('Google')
    expect(page).to have_content('Hotmail')
    expect(page).to have_content('Gmail')
  end
end
