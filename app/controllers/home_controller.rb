class HomeController < ApplicationController
  require 'nokogiri'
  require 'typhoeus'
  def index


  end

  def projects
    link = 'https://www.facebook.com/Axe'
        page = Typhoeus::Request.get(link, :timeout => 5000)
        doc = Nokogiri::HTML.parse(page.body)
        likes = doc.css('meta')[4].attributes["content"].value.scan(/(\d+\W\d+\W+\d+\W)likes/).first.first.gsub(/[^0-9]/, "")
        puts likes
    render :projects
  end
end
