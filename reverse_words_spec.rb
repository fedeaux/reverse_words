require_relative 'reverse_words'

RSpec.describe String do
  describe '#reverse_words' do
    it 'reverses the words' do
      expect('the big black cat'.reverse_words).to eq 'cat black big the'
    end

    it 'keeps punctuation places' do
      expect('the big, black cat.'.reverse_words).to eq 'cat black, big the.'
    end

    it 'returns an empty string if an empty string is given' do
      expect(''.reverse_words).to eq ''
    end

    it 'returns the same string if no words has been found' do
      expect('?![]'.reverse_words).to eq '?![]'
    end

    it 'returns the same string if no words has been found' do
      expect('?![]'.reverse_words).to eq '?![]'
    end

    it 'considers numbers, dashes and underscores as parts of a word' do
      expect('Where is my ms-5, pinkman_36?'.reverse_words).to eq 'pinkman_36 ms-5 my is, Where?'
    end
  end
end
