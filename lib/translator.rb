require 'yaml'

def load_library(file_path)
  my_hash = {"get_meaning" => {}, "get_emoticon" => {} }

  YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end

  my_hash
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)

end

def get_english_meaning
  # code goes here
end
