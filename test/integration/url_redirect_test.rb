require 'test_helper'

class UrlRedirectTest < ActionDispatch::IntegrationTest
  test "short_url should redirect to the original_url" do
    get @url[:short_url]
    assert redirect_to original_url
  end
  
  test "short_url should be the shortener of long_url" do
    
end
