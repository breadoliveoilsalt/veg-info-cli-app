class s

  def initialize
  end

  def self.scrape_veg_basics
    # doc = Nokogiri::HTML(open("http://www.gardening.cornell.edu/homegardening/scene0391.html"))
    array_veg_data = [ ]
    doc = Nokogiri::HTML(open("http://www.gardening.cornell.edu/homegardening/scene0391.html")).css("div.intromuted a")
    doc.collect do | veg_element |
        veg_hash = { }
        veg_hash[:name] = veg_element.text
        veg_hash[:url_basic_info] = veg_element['href']
      end
  end


  # This seems to have gotten them

  # list = x.css("div.intromuted a")
  # list.count has 61 -- got em
  #
  # This gives me the html -- will need to add to this
  #   list.first['href']
  #   list.first.name -- gives me the name



  # def get_doc
  #   doc =
  #   puts doc
  # end

  # first clue: class="intromuted" -- this looks like the first column
  #each column is a td valign="top" with a div class of "intromuted"


end
