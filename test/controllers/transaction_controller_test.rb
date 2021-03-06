require 'test_helper'

class TransactionControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get transaction_index_url
    assert_response :success
  end

  test 'should get create' do
    get transaction_create_url
    assert_response :success
  end

  test 'should get external' do
    get transaction_external_url
    assert_response :success
  end
end
