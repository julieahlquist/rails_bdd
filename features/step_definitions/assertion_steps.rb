Then("I should be on {string} page") do |page|
    article = Article.find_by(title: page)
    expect(current_path).to eq articles_path(article)
end

Then("I should see {string}") do |text|
    expect(page).to have_content text
end

# Then("I should be on {string}") do |page|
#     article = Article.find_by(title: page)
#     expect(current_path).to eq article_path(article)
# end