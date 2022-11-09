Quando('realizar consulta no endpoint {string}') do |string|
    result = HTTParty.get("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT")
  end
  
  Então('deve existir no response body o JSON contendo a chave {string}') do |string|
    expect(result.response.body). to match ('typeOfEstablishment') 
  end
  
  Então('printar aleatóriamente um {string} da lista') do |string|
   arr = Array.response.body.typeOfEstablishment(1) {rand 1000}
   puts arr 
  end