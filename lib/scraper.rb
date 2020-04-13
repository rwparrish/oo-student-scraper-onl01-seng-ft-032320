require 'open-uri'
require 'pry'
require 'nokogiri'


class Scraper
    
  def self.scrape_index_page(index_url)
    
    students = []
    html = open(index_url)
    index = Nokogiri::HTML(html)
    index.css("div.student-card").each do |student|
      profile = {}
      profile[:name] = student.css("h4.student-name").text 
      profile[:location] = student.css("p.student-location").text 
      profile[:profile_url] = student.css("a").attribute("href").value
      students << profile 
      
    end
    students  
  end

  def self.scrape_profile_page(profile_url)
    html = open(index_url)
    index = Nokogiri::HTML(html)
    index.css("div.student-card").each do |student|
  end

end
end

