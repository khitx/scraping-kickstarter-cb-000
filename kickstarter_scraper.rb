require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end

create_project_hash

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta .location-name").text
# percent_funded: project.css("ul.project-stats .fist.funded").text

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
