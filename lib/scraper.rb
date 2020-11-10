require 'open-uri'
require 'nokogiri'
require 'pry'
# s.css(".student-name").text
# s.css(".student-location").text
#students.css("a").attribute("href")
# links = students.xpath("//a")
# urls = links.map { |e|  puts "#{e[:href]}"}

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = doc.css(".student-card")
    students.map do |s|
      student = {}
      student[:name] = s.css(".student-name").text
      # student[:location] = s.css(".student-location").text
      # student[:profile_url] = students.css("a").attribute("href")
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
puts Scraper.scrape_index_page("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
