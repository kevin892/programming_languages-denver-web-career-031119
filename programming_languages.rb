
def reformat_languages(languages)
  new_languages = {}
  languages.each { |style, language|
    language.each { |name, attribute|
      new_languages[name] = attribute if new_languages[name] == nil
      new_languages[name][:style] = []
      new_languages[name][:style] << style
    }
  }
  new_languages[:javascript][:style] << :oo
  new_languages
end
