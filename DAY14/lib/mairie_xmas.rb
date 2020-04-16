require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_townhall_email(townhall_url)
  doc = Nokogiri::HTML(open(townhall_url))
  doc.xpath('//main/section[2]/div/table/tbody/tr[4]/td[2]').each do |townhall_email|
    return townhall_email.text
  end
end

def get_townhall_urls
  page = 'https://www.annuaire-des-mairies.com/val-d-oise.html'
  doc = Nokogiri::HTML(open(page))
  townhall_url_array = []
  doc.xpath('//a[@class="lientxt"]').each do |townhall_url|
    townhall_url_array << page.chomp("val-d-oise.html").concat(townhall_url['href'].delete_prefix("./"))
  end
  return townhall_url_array
  #puts townhall_url_array
end

def get_townhall
  page = 'https://www.annuaire-des-mairies.com/val-d-oise.html'
  doc = Nokogiri::HTML(open(page))
  townhall_array = []
  doc.xpath('//a[@class="lientxt"]').each do |townhall|
    townhall_array << townhall.text
  end
  return townhall_array
  #puts townhall_array
end

def make_townhall_email_array
  n = 0
  townhall_email_array = []
  while (n < get_townhall.length) do 
    townhall_email_array[n]= Hash.new
    townhall_email_array[n][get_townhall[n]] = get_townhall_email(get_townhall_urls[n])
    n += 1
  end
  return townhall_email_array
end

def perform
  print(make_townhall_email_array)
end

perform