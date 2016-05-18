require File.dirname(__FILE__) + '/../../spec_helper'

include Music::Text

describe Normalization do
  describe '.normalize_artist_name' do
    it do
      expect(Normalization.normalize_artist_name("N'sync")).to eql('nsync')
      expect(Normalization.normalize_artist_name("D'Angelo")).to eql('dangelo')
      expect(Normalization.normalize_artist_name("R. Kelly")).to eql('r_kelly')
      expect(Normalization.normalize_artist_name("P.J. Harvey")).to eql('pj_harvey')
      expect(Normalization.normalize_artist_name("Run-D.M.C.")).to eql('run_dmc')
      expect(Normalization.normalize_artist_name("The Presidents of the United States of America")).to eql('presidents_of_the_united_states_of_america')
      expect(Normalization.normalize_artist_name("Bruce Springsteen and the E Street Band")).to eql('bruce_springsteen')
      expect(Normalization.normalize_artist_name("Tom Petty and the Hearbreakers")).to eql('tom_petty')
      expect(Normalization.normalize_artist_name("Bob Marley and the Wailers")).to eql('bob_marley')
      expect(Normalization.normalize_artist_name("A New Found Glory")).to eql('new_found_glory')
    end
  end
end
