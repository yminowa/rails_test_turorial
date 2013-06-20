require 'spec_helper'

describe ArticlesController do

  describe "GET 'index'" do
		before do
			@article1 = Article.create(title: "Article 1", body: "Hello")
			@article2 = Article.create(title: "Article 2", body: "World")
			get 'index'
		end

		it "should be successful" do
			response.should be_success
		end

		it "returns all article" do
			assigns[:articles].should =~ [@article1, @article2]
		end
  end

end
