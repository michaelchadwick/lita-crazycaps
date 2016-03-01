require 'lita'

module Lita
  module Handlers
    class Crazycaps < Handler
      route(/^(?:cc|crazycaps)\s+(.+)/i, :crazycaps, command: true, help: {
        'cc PHRASE' => 'Return PHRASE as a randomly capitalized new phrase.'
      })

      def crazycaps(response)
        phrase = response.matches[0][0]
        phrase_cc = ''

        phrase.each_char do |c|
          phrase_cc += [true, false].sample ? c.downcase : c.upcase
        end

        response.reply(phrase_cc)
      end
    end

    Lita.register_handler(Crazycaps)
  end
end
