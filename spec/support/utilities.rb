include ApplicationHelper

def full_title(page_title)
  base_title = "What is my Agile ?"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def valid_signin(user)
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: message)
  end
end

RSpec::Matchers.define :have_title do |message|
  match do |page|
    page.should have_selector('title', text: message)
  end
end

RSpec::Matchers.define :have_text_header do |message|
  match do |page|
    page.should have_selector('h1', text: message)
  end
end

RSpec::Matchers.define :have_profile_link do |url|
  match do |page|
    page.should have_link('Profile', url: url)
  end
end
RSpec::Matchers.define :have_signin_link do |url|
  match do |page|
    page.should have_link('Sign in', url: url)
  end
end

