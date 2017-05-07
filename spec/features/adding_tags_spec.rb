feature 'Adding tags to urls' do
  scenario 'Add a tag to a bookmarked url' do
    visit 'links/new'
    fill_in 'url', with: 'http://www.hotmail.com'
    fill_in 'title', with: 'My emails'
    fill_in 'tags', with: 'Emails'
    click_button 'Create'
    link = Link.first
    expect(link.tags.map(&:name)).to include('Emails')
  end
end
