require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
end

#create_project_hash

# projects: kickstarter.css("li.project.grid_4")
#:projects => {
#  "My Great Project"  => {
#    :image_link => "Image Link",
#    :description => "Description",
#    :location => "Location",
#    :percent_funded => "Percent Funded"
#  },
#  "Another Great Project" => {
#    :image_link => "Image Link",
#    :description => "Description",
#    :location => "Location",
#    :percent_funded => "Percent Funded"
#  }
#}
