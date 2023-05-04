require 'rails_helper'
RSpec.describe 'govuk_file_dropzone_field', type: :feature, js: true do
  include_context 'components test page'
  it 'exists' do
    test_page.load
    expect(test_page).to have_govuk_file_dropzone_field
  end

  it 'has the correct label' do
    test_page.load
    expect(test_page.govuk_file_dropzone_field.label.text).to eql 'File dropzone field label'
  end

  it 'has no hint by default' do
    test_page.load
    expect(test_page.govuk_file_dropzone_field).not_to have_hint
  end

  it 'has the correct hint when added' do
    test_page.load
    test_page.with_hints
    expect(test_page.govuk_file_dropzone_field.hint.text).to eql 'File dropzone field hint'
  end

  it 'has no errors by default' do
    test_page.load
    expect(test_page.govuk_file_dropzone_field).not_to have_error
  end

  it 'has errors when added' do
    test_page.load
    test_page.with_errors
    test_page.govuk_file_dropzone_field.assert_error_message("File dropzone field error")
  end

  context 'with positive response from backend' do
    let!(:stub) { EtTestHelpers::RSpec.stub_create_blob_to_azure_setup }

    it 'can be set and value returned' do
      file = __FILE__
      test_page.load
      test_page.govuk_file_dropzone_field.set(file)
      test_page.govuk_file_dropzone_field.assert_value(file)
    end
  end

  context 'with negative response from backend' do
    let!(:stub) { EtTestHelpers::RSpec.stub_create_blob_to_azure_failure }

    it 'can be set and error returned' do
      file = __FILE__
      test_page.load
      test_page.govuk_file_dropzone_field.set(file)
      test_page.govuk_file_dropzone_field.assert_upload_error_message('The uploaded file is invalid in some way')
    end
  end
end
