
def reformat_languages(languages)
  new_languages = {}
  languages.each { |style, language|
    language.each { |name, value|
      new_languages[name] = value if 
      new_languages[name][:style] = []
      new_languages[name][:style] << style
    }
  }
  new_languages[:javascript][:style] << :oo
  new_languages
end
