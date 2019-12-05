require 'rails_helper'
# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature " Post management function", type: :feature do
#  # In scenario (alias of it), write the processing of the test for each item you want to check
 background  do
  #  User.create!(email: 'm@gmail.Com',  password: '1234567')
  #    visit  root_path
  #     fill_in  'Email',  with: 'm@gmail.Com'
  #   # find('email', match: :first).set('m@gmail.com')
  #   fill_in  'Password' ,  with: '1234567'
  #   click_on  'Log in'
  # expect(page).to have_text('Signed in successfully.')
end
scenario "Test photographers list" do
  @photographers=Photographer.all
  assert @photographers
end
 # visit to tasks_path (transition to task list page)
# visit tasks_path
 # write a test to verify that the string "" testtesttest "" samplesample "is included when accessing the task list page using have_content method
 scenario "Test photographers creation" do
  @photographers=Photographer.create(upload_date: "12-4-2019", image: "string", video: "string")
  assert @photographers
 end
 
 scenario "Test whether search button works" do
  visit  root_path
  if has_field?('email')
  fill_in  'Email',  with: 'm@gmail.Com'
   fill_in  'Password' ,  with: '1234567'
   click_on  'Log in'
   expect(page).to have_text('Signed in successfully.')
   Photographer.create(name: "web")
   fill_in  '@q',  with: 'web'
  click_on "Search"
  expect(page).to have_content('web')
   visit  new_photographer_path
 end
end
 end

