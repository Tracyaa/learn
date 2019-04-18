require 'pry'

def reformat_languages(languages)
  new_hash = {}
  # :oo => {
  #   :ruby => {
  #     :type => "interpreted"
  #   },
  languages.each do |style, language_hash|
    language_hash.each do |language, data|
      if new_hash.key?(language) == false
        new_hash[language] = data
        new_hash[language][:style] = [style]
      else
        new_hash[language][:style] << style
      end
    end
  end

  # languages.each do |style, language_hash|
  #   language_hash.each do |head, body_hash|
  #     new_hash[head][:style] << style
  #   end
  # end
  new_hash
end
