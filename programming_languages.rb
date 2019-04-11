def reformat_languages(languages)
  reformatted_hash = {}

  # object-oriented
                     #oo   {#:ruby=>type:{}, :java=>type:{}, python, :java}

 # languages = {
 #  :oo => {
 #    :ruby => {
 #      :type => "interpreted"
 #    },
 #    :javascript => {
 #      :type => "interpreted"
 #    },
 #    :python => {
 #      :type => "interpreted"
 #    },
 #    :java => {
 #      :type => "compiled"
 #    }
 #  },

  # type: oo,  language_hash: {ruby => {type => "interpreted"}}
  languages.each do |type, language_hash|
    

    # language_name: ruby, date: {type => "interpreted"}
    language_hash.each do |language_name, data|


      # data_name: type, value: "interpreted"
      data.each do |data_name, value|
        if reformatted_hash.key?(language_name) == false
          reformatted_hash[language_name] = { data_name => value, :style => [type] }
        else
          reformatted_hash[language_name][:style] << type
        end
      end
    end

  end
  reformatted_hash
end
