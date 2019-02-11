
def reformat_languages(languages)
  new_languages = {}
  languages.each { |style, language|
    language.each { |language_name, attribute|
      new_languages[language_name] = attribute if new_languages[language_name] == nil
      new_languages[language_name][:style][]=style
    }
  }
  new_languages[:javascript][:style] << :oo
  new_languages
end
