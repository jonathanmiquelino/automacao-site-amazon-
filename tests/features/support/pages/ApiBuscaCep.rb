class ApiBuscaCep

    $url = "https://viacep.com.br"

    def buscaCep(uf, cidade, logradouro)
        endpoint = 'ws'
        url = "#{$url}/#{endpoint}/#{uf}/#{cidade}/#{logradouro}/json/"
        @body = Comum.new.test_get(url)
        @body
    end

end
