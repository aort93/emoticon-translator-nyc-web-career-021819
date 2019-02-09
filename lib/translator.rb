require 'yaml'

def load_library(file_path)
  newlibrary = {"get_meaning" => {}, "get_emoticon" => {} }

  YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    new_library["get_emoticon"][english] = japanese
    new_library["get_meaning"][japanese] = meaning
  end

  new_library
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_emoticon"][emoticon]

  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_meaning"][emoticon]

  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
