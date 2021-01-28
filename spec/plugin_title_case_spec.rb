# frozen_string_literal: true

require 'liquid'
require_relative '../_plugins/title_case'

# rubocop:disable Metrics/BlockLength

RSpec.describe Jekyll::TitleCase do
  include Jekyll::TitleCase

  it 'can capitalize a simple sentence' do
    expect(title_case('hello, world!'))
      .to eq('Hello, World!')
    expect(title_case('The quick brown fox jumps over the lazy dog'))
      .to eq('The Quick Brown Fox Jumps Over the Lazy Dog')
  end

  it 'can capitalize a complex English' do
    expect(title_case('fly me to the moon'))
      .to eq('Fly Me to the Moon')
    expect(title_case('have you ever been (to electric ladyland)'))
      .to eq('Have You Ever Been (to Electric Ladyland)')
    expect(title_case('nine o’clock'))
      .to eq('Nine O’Clock')
    expect(title_case('rock ’n’ roll'))
      .to eq('Rock ’n’ Roll')
    expect(title_case('plug in baby'))
      .to eq('Plug In Baby')
    expect(title_case('shine on you crazy diamond'))
      .to eq('Shine On You Crazy Diamond')
    expect(title_case('r.e.m. losing my religion'))
      .to eq('R.E.M. Losing My Religion')
  end

  it 'can capitalize a French sentence' do
    expect(title_case('hymne à la joie'))
      .to eq('Hymne à la Joie')
  end

  it 'can capitalize a Japanese sentence' do
    expect(title_case('watashi wa kuruma wo motteiru'))
      .to eq('Watashi wa Kuruma wo Motteiru')
  end
end

# rubocop:enable Metrics/BlockLength
