# -*- encoding: utf-8 -*-
#Given /^the following users:$/ do |users|
Given /^次のユーザが登録されている:$/ do |user|
  User.create!(user.hashes)
end

# When /^I delete the (\d+)(?:st|nd|rd|th) users$/ do |pos|
When /^(\d+)番目のユーザを削除する$/ do |pos|
  visit users_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

# Then /^I should see the following users:$/ do |expected_users_table|
Then /^次のユーザが表示されていること:$/ do |expected_users_table|
  expected_users_table.diff!(tableish('table tr', 'td,th'))
end
