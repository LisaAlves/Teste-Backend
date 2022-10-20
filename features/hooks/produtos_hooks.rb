Before '@get' do
    @nome = faker:: produto.name
    @id = faker:: numero.id

    @body = {
        "nome" : @nome,
        "id" : @id
    }
    @body = JSON.generate(body)


    @get= get, new (@body)

    # criei os dados faker para possivel consulta do ID, 
    não consegui desenvolver o codigo correto para executar a ação desejada 