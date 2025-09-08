require_relative "Selection/Selection.rb"

def learn_about_meats
  get_statistics(:ham,         "is made from a pig.",
                 :beef,        "is made from a cow.",
                 :chicken, "is made from a chicken.")
end

def reconsider_assertions
  reconsider
end

def reassess_assertions
  reasses
end

2.times do
  learn_about_meats; 3.times do reassess_assertions end; puts $current_probability
end
