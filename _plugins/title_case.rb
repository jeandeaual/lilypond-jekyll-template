# frozen_string_literal: true

module Jekyll
  # Jekyll plugin to capitalize a sentence
  # Mostly following https://musicbrainz.org/doc/Style/Language/English
  module TitleCase
    # List of words to not capitalize
    EXCLUDE_LIST = [
      # English
      'a',
      'an',
      'the',
      'and',
      'but',
      'or',
      'nor',
      'as',
      'at',
      'by',
      'for',
      'in',
      'of',
      'on',
      'to',
      'but',
      'cum',
      'mid',
      'off',
      'per',
      'qua',
      're',
      'up',
      'via',
      'o\'',
      'o’',
      'n\'',
      'n’',
      '\'n\'',
      '’n’',
      # French
      'à',
      'le',
      'la',
      'l\'',
      'les',
      'un',
      'une',
      'uns',
      'unes',
      # Japanese (romaji)
      'ha',
      'ga',
      'de',
      'no',
      'ni',
      'to',
      'wa',
      'wo'
    ].freeze

    VERBS_WITH_ADVERBS = %w[plug shine].freeze
    ADVERBS = %w[in on].freeze
    DOTS = %w[. ・].freeze

    # Capitalize a sentence
    def title_case(input)
      split = input.split(/[-_\s]/)
      split.each_with_index.map do |word, index|
        previous_word = split[index - 1] unless word == split.first

        if word.casecmp('o\'clock').zero?
          'O\'Clock'
        elsif word.casecmp('o’clock').zero?
          'O’Clock'
        elsif EXCLUDE_LIST.include?(word) &&
              previous_word &&
              !(ADVERBS.include?(word.downcase) && VERBS_WITH_ADVERBS.include?(previous_word.downcase))
          word
        else
          capitalized = word
          DOTS.each do |char|
            capitalized = capitalized.split(char).map { _1[0].upcase + _1[1..] }.join(char)
            capitalized += char if word.end_with?(char)
          end
          capitalized
        end
      end.join(' ')
    end
  end
end

Liquid::Template.register_filter(Jekyll::TitleCase)
