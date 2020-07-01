# require modules here
require "yaml"

def load_library
  # code goes here
  library = YAML.load_file('lib/emoticons.yml')
  new_library = {}
  #do what i did with the pigeons to rearrange stuff here
  library.each do |key, value|
    new_library[key] = {
      english: library[key][0]
      japanese: library[key][1]
    }
  end
  print new_library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library