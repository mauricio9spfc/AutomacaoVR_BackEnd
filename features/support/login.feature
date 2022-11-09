#language: pt

Funcionalidade: Lista de Estabelecimentos

Criar um cenário, que valide que o JSON retornado pelo serviço possui a chave “typeOfEstablishment” 
e print, aleatoriamente, um desses tipos de estabelecimentos.

@get_vr_api
Cenário: Validar JSON da lista de estabelecimentos
Quando realizar uma consulta ao endpoint "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
Então deve existir no response body o JSON contendo a chave "typeOfEstablishment"
E printar aleatóriamente um "estabelecimento" da lista


