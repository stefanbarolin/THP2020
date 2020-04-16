require 'rubygems'
require 'nokogiri'
require 'open-uri'

$doc = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/')) # Fetch and parse HTML document doc is with $ to be reused after

def make_currencies_list #method to save the currencies in array
  #puts "Darktrader Search for Crypto names by xpath......."
  $currencies_list = []
  $doc.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]').each do |currency|
  $currencies_list << currency.text
  end
  #puts "#{currencies_list.count} crypto have been scrapped !"
  #puts ("........................................")
  return $currencies_list
end

def make_currencies_values #method to save the values in a array
  #puts "Dartrader Search for Crypto values by xpath......"
  $currencies_values = []
  $doc.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]').each do |value|
    $currencies_values << value.text.tr("$", "").tr(",", "").to_f
  end
  #puts "#{currencies_values.count} values have been scrapped !"
  #puts ("........................................")
  return $currencies_values
end

def make_crypto_array
  n = 0
  crypto_array = []
  while (n < $currencies_values.length) do 
    crypto_array[n]= Hash.new
    crypto_array[n][$currencies_list[n]] = $currencies_values[n]
    n += 1
  end
  return crypto_array
end

def perform
  puts "Darktrader Search for Crypto names by xpath......."
  puts "#{make_currencies_list.length} crypto have been scrapped !"
  puts ("........................................")
  puts ""
  puts "Darktrader Search for Crypto values by xpath......."
  puts "#{make_currencies_values.length} crypto have been scrapped !"
  puts ("........................................")
  puts ""
  puts "The result of the scrapping in the array of crypto <-> value :"
  puts ""
  print make_crypto_array
end

perform