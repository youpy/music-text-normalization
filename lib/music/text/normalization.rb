require "music/text/normalization/version"

module Music
  module Text
    module Normalization
      def normalize_artist_name(text)
        lowercase_name = text.downcase

        case lowercase_name
        when 'bruce springsteen and the e street band'
          'bruce_springsteen'
        when 'tom petty and the hearbreakers'
          'tom_petty'
        when 'bob marley and the wailers'
          'bob_marley'
        when 'the beatles'
          'the_beatles'
        when 'the verve'
          'the_verve'
        else
          lowercase_name.
            gsub(/['\.]/, '').
            sub(/^(a|an|the)\ +/, '').
            gsub(/[^a-z0-9]+/, '_').
            sub(/^_/, '').sub(/_$/, '')
        end
      end

      module_function :normalize_artist_name
    end
  end
end
