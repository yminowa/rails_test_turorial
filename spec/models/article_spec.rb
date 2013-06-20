# coding: utf-8

require 'spec_helper'

describe Article do
	context "input title and body" do
		before do
			@article = Article.new(title: "first blog", body: "first article")
		end

		it "title is set" do
			@article.title.should == "first blog"
		end

		it "body is set" do
			@article.body.should == "first article"
		end
	end

	context "when title is not set" do
		before do
			@article = Article.new
		end
		it { @article.should_not be_valid }
	end

	context "when title is set" do
		before do
			@article = Article.new(title: "first blog")
		end
	end
end
