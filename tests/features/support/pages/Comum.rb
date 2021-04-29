class Comum
  include Capybara::DSL
  
  def acessar_pag
      visit 'https://www.amazon.com.br/'
      sleep(2)
  end

  def test_get(url)
    header = Header.new.cria_header
    RestClient::Request.execute(method: :get, url: url, headers: header) do |response, request, result|
      @response = response
      @body = JSON.parse(@response)
    end
    status_code = @response.code 
    @body
  end
end