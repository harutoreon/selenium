require 'spec_helper'
require 'selenium-webdriver'

RSpec.describe 'Open web page' do
  before do
    @driver = Selenium::WebDriver.for :chrome
  end

  after do
    @driver.quit
  end

  it 'Containing "harutoreon" in the title.' do
    @driver.get('https://github.com/harutoreon')
    expect(@driver.title).to include('harutoreon')
  end

  it 'Containing "オブジェクト指向スクリプト言語 Ruby" in the title.' do
    @driver.get('https://www.ruby-lang.org/ja/')
    expect(@driver.title).to include('オブジェクト指向スクリプト言語 Ruby')
  end

  it 'Containing "DeepL" in the title.' do
    @driver.get('https://www.deepl.com/translator')
    expect(@driver.title).to include('DeepL')
  end
end
