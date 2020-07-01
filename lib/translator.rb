# require modules here
require "yaml"

def load_library(path)
  library = YAML.load_file(path)
  new_library = {}

  library.each do |key, value|
    new_library[key] = {
      english: library[key][0],
      japanese: library[key][1]
    }
  end
  new_library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  library[:japanese].key(emoticon)
end

get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)")