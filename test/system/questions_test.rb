# frozen_string_literal: true

require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask your coach anything'
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test 'saying I am going to work right now! yields a satisfied response from the coach' do
    visit ask_url
    fill_in 'question', with: 'I am going to work right now!'
    click_on 'Ask'

    assert_text 'Great!'
    take_screenshot
  end
end
