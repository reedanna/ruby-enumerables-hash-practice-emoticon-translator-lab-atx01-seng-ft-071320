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

def get_english_meaning(path, emoticon)
  library = load_library(path)
  meaning = "Sorry, that emoticon was not found"
  library.each do |key, value|
    if library[key][:japanese] == emoticon
      meaning = key
    end
  end
  meaning
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  library = load_library(path)
  meaning = ""
  library.each do |key, value|
    if library[key][:english] == emoticon
      meaning = key
    end
  end
  if library[meaning][:japanese] == true
    return library[meaning][:japanese]
  else
    return "Sorry, that emoticon was not found"
  end
end