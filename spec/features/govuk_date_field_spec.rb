require 'rails_helper'
RSpec.describe 'govuk_date_field', type: :feature, js: true do
  include_context 'components test page'
  it 'exists' do
    test_page.load
    expect(test_page).to have_govuk_date_field
  end

  it 'has the correct label' do
    test_page.load
    expect(test_page.govuk_date_field.label.text).to eql 'Date field label'
  end

  it 'has no hint by default' do
    test_page.load
    expect(test_page.govuk_date_field).not_to have_hint
  end

  it 'has the correct hint when added' do
    test_page.load
    test_page.with_hints
    expect(test_page.govuk_date_field.hint.text).to eql 'Date field hint'
  end

  it 'has no errors by default' do
    test_page.load
    expect(test_page.govuk_date_field).not_to have_error
  end

  it 'has errors when added' do
    test_page.load
    test_page.with_errors
    test_page.govuk_date_field.assert_error_message("Date field error")
  end

  it 'can be set and value returned' do
    test_page.load
    dt = Date.parse('6/7/2020')
    test_page.govuk_date_field.set(dt)
    expect(test_page.govuk_date_field.value).to eql dt
  end

  it 'is reloaded with value submitted' do
    test_page.load
    dt = Date.parse('6/7/2020')
    test_page.govuk_date_field.set(dt)
    test_page.submit
    test_page.assert_submitted
    test_page.govuk_date_field.assert_value(dt)
  end
end
