require 'httparty'
require 'nokogiri'
require 'byebug'

def scraper
  url = "https://www.autotrader.com/car-dealers/Denver+CO-80201?zip=80201&searchRadius=25&state=CO&city=Denver&makeCode=AUDI&makeCode=BMW&makeCode=CAD&makeCode=CHEV&makeCode=CHRY&makeCode=DODGE&makeCode=FORD&makeCode=GMC&makeCode=HONDA&makeCode=INFIN&makeCode=JEEP&makeCode=ROV&makeCode=LEXUS&makeCode=LINC&makeCode=MAS&makeCode=MAZDA&makeCode=MB&makeCode=MINI&makeCode=NISSAN&makeCode=POR&makeCode=SUB&makeCode=TOYOTA&makeCode=VOLKS&sortBy=relevance&numRecords=100&firstRecord=0"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogirl::HTML(unparsed_page)
  byebug
end
