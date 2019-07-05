Given("I visit the {string} page") do |string|
    visit root_path
end

When("I click {string}") do |string|
    click_link_or_button(string)
end

# When("I fill in {string} with {string}") do |field, content|
#     fill_in field, with: content
# end