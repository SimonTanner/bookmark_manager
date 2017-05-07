feature 'Adding tags to urls' do
  scenario 'Add a tag to a bookmarked url' do
    visit 'links/new'
    fill_in 'url', with: 'http://www.hotmail.com'
    fill_in 'title', with: 'My emails'
    fill_in 'tags', with: 'emails'
    click_button 'Create'
    link = Link.first
    expect(link.tags.map(&:name)).to include('emails')
  end

  scenario 'Add a tag to a bookmarked url' do
    visit 'links/new'
    fill_in 'url', with: 'http://www.makersacademy.com'
    fill_in 'title', with: 'Coding School'
    fill_in 'tags', with: 'education ruby'
    click_button 'Create'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education', 'ruby')
  end
end
