require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get index_input_url
    assert_response :success
  end

  test "should get output" do
    get index_output_url
    assert_response :success
  end

  test 'should return result if param is number' do
    get index_output_url, params: { n: '130' }
    assert_response :success
    assert_nil assigns[:error]
    assert_equal [[1, 1], [2, 4], [3, 9], [11, 121], [22, 484], [101, 10201], [111, 12321], [121, 14641]], assigns[:result]
  end

  test 'should return error if has not number' do
    get index_output_url, params: { n: 'perry' }
    assert_response :success
    assert_not_nil assigns[:error]
    assert_nil assigns[:result]
  end

  test 'should return error if params are empty' do
    get index_output_url
    assert_response :success
    assert_not_nil assigns[:error]
    assert_nil assigns[:result]
  end
end
