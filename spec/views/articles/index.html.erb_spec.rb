require 'spec_helper'

describe "articles/index.html.erb" do
	before do
		assign(:articles, [Article.create(title: "first blog", body: "hello")])
		render
	end

	it "show article title" do
		rendered.should =~ /first blog/
	end

	it "show article body" do
		rendered.should =~ /hello/
	end
end
