require 'open-uri'
require 'nokogiri'
require 'pry'
# s.css(".student-name").text
# s.css(".student-location").text

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = doc.css(".student-card")
    puts students.first.css("div . student-card")
    # students.each do |s|
    #   puts s.css("div.student-card")
    # end

  end

  def self.scrape_profile_page(profile_url)

  end

end
Scraper.scrape_index_page("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
