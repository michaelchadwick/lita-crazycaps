require "lita"

module Lita
  module Handlers
    class Crazycaps < Handler
      route(/^crazycaps\s+(.+)/i, :crazycaps, command: true, help: {
        "crazycaps PHRASE" => "Return PHRASE as a randomly capitalized new phrase."
      })
      
      def crazycaps(response)
        phrase = response.matches[0][0]
        phrase_cc = ""
        
        phrase.each_char do |c|
          r = Random.new.rand(0..1)
          if (r == 0)
            c = c.upcase
          else
            c = c.downcase
          end
          phrase_cc += c
        end
        
        response.reply(phrase_cc)
      end
    end

    Lita.register_handler(Crazycaps)
  end
end
