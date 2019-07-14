When("I visit the site") do
    visit root_path
end

Given("the following articles exists") do |table|
    table.hashes.each do |article|
        FactoryBot.create(:article, article)
    end
end

Given("I click {string}") do |element|
    click_on element
end

When("I fill in {string} with {string}") do |field, content|  
    fill_in field, with: content
end

When("I click {string} link") do |string|
    click_link
end

Given("I visit {string} page") do |string|
    visit new_user_session_path
end

When("I click Show link for {string}") do |article_title|
    article_id = Article.find_by(title: article_title)
    visit articles_path(article_id)
end

Given("I am logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end