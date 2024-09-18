Categories = {
    [1] = { 
        ["category"] = "A",
        ["description"] = "Moto",
        ["price"] = 2000,
        ["taxs"] = {
            theoretical = 100,
            practice = 350
        },
    },
    [2] = {  
        ["category"] = "B",
        ["description"] = "Carro",
        ["price"] = 5000,
        ["taxs"] = {
            theoretical = 100,
            practice = 350
        },
    },
    [3] = {  
        ["category"] = "C",
        ["description"] = "Ônibus",
        ["price"] = 8000,
        ["taxs"] = {
            theoretical = 100,
            practice = 350
        },
    },
    [4] = {  
        ["category"] = "D",
        ["description"] = "Caminhão",
        ["price"] = 12000,
        ["taxs"] = {
            theoretical = 100,
            practice = 350
        },
    },
}

Locations = {
    [1] = {
        ["coords"] = { -698.05,-1673.28,25.0,17.01 },
        ["categories"] = {
            [1] = { 
                vehicles = {"cg160"},
                maxErros = 3,
                instructor = "a_m_y_genstreet_01",
                spawn = { 
                    {-691.16,-1652.41,25.0,93.55} 
                },
                route = {
                    { coords = { -703.95,-1651.56,25.0,0.0 }, text = "Verifique os dois lados da via, para garantir que está livre para proceguir." },
                    { coords = { -704.45,-1637.57,25.0,93.55 }, text = "Não é obrigatório esperar os semafaros, porém você deve parar em todos e garantir que a via está livre para seguir." },
                    { coords = { -714.35,-1638.34,25.0,172.92 }, text = "Mantenha uma distância segura do veículo à frente." },
                    { coords = { -713.63,-1654.41,25.0,187.09 }, text = "Atenção e cuidado ao atravessar esquinas." },
                },
            },
            [2] = {  
                vehicles = {"golg9"},
                maxErros = 3,
                instructor = "s_m_y_uscg_01",
                spawn = { 
                    {213.81, 390.05, 106.85, 173.2} 
                },
                route = {
                    { coords = { -701.98,-1689.67,25.0,2.84 }, text = "Verifique os dois lados da via, para garantir que está livre para proceguir." },
                    { coords = { -682.64,-1681.25,25.07,184.26 }, text = "Não é obrigatório esperar os semafaros, porém você deve parar em todos e garantir que a via está livre para seguir." },
                    { coords = { -504.13,-1796.99,21.94,325.99 }, text = "Mantenha uma distância segura do veículo à frente." },
                    { coords = { -424.68,-1770.56,20.64,195.6 }, text = "Atenção e cuidado ao atravessar esquinas." },
                    { coords = { 1065.37,414.49,90.99,136.07 }, text = "O limite de velocidade das auto-estradas é de 120Km/h.", limiteSpeed = 120 },
                    { coords = { -742.08,-1773.49,29.32,11.34 }, text = "Veículos de emergência possuem prioridade, de passagem!" },
                    { coords = { -728.75,-1621.26,24.58,249.45 }, text = "É proíbido estacionar em áreas cuja uma faixa vermelha está pintada na calçada." },
                    { coords = { -672.65,-1652.79,24.89,150.24 }, text = "Transitar com veículos danificados é crime!" },
                    { coords = { -694.81,-1681.66,25.0,85.04 }, text = "Aguarde, o examinador dará o resultado." },
                },
            },
            [3] = {  
                vehicles = {"coachrv"},
                maxErros = 3,
                instructor = "ig_mp_agent14",
                spawn = { 
                    {213.81, 390.05, 106.85, 173.2} 
                },
                route = {
                    { coords = { -701.98,-1689.67,25.0,2.84 }, text = "Verifique os dois lados da via, para garantir que está livre para proceguir." },
                    { coords = { -682.64,-1681.25,25.07,184.26 }, text = "Não é obrigatório esperar os semafaros, porém você deve parar em todos e garantir que a via está livre para seguir." },
                    { coords = { -504.13,-1796.99,21.94,325.99 }, text = "Mantenha uma distância segura do veículo à frente." },
                    { coords = { -424.68,-1770.56,20.64,195.6 }, text = "Atenção e cuidado ao atravessar esquinas." },
                    { coords = { 1065.37,414.49,90.99,136.07 }, text = "O limite de velocidade das auto-estradas é de 120Km/h.", limiteSpeed = 120 },
                    { coords = { -742.08,-1773.49,29.32,11.34 }, text = "Veículos de emergência possuem prioridade, de passagem!" },
                    { coords = { -728.75,-1621.26,24.58,249.45 }, text = "É proíbido estacionar em áreas cuja uma faixa vermelha está pintada na calçada." },
                    { coords = { -672.65,-1652.79,24.89,150.24 }, text = "Transitar com veículos danificados é crime!" },
                    { coords = { -694.81,-1681.66,25.0,85.04 }, text = "Aguarde, o examinador dará o resultado." },
                },
            },
            [4] = {  
                vehicles = {"hauler"},
                maxErros = 3,
                instructor = "cs_drfriedlander",
                spawn = { 
                    {213.81, 390.05, 106.85, 173.2} 
                },
                route = {
                    { coords = { -701.98,-1689.67,25.0,2.84 }, text = "Verifique os dois lados da via, para garantir que está livre para proceguir." },
                    { coords = { -682.64,-1681.25,25.07,184.26 }, text = "Não é obrigatório esperar os semafaros, porém você deve parar em todos e garantir que a via está livre para seguir." },
                    { coords = { -504.13,-1796.99,21.94,325.99 }, text = "Mantenha uma distância segura do veículo à frente." },
                    { coords = { -424.68,-1770.56,20.64,195.6 }, text = "Atenção e cuidado ao atravessar esquinas." },
                    { coords = { 1065.37,414.49,90.99,136.07 }, text = "O limite de velocidade das auto-estradas é de 120Km/h.", limiteSpeed = 120 },
                    { coords = { -742.08,-1773.49,29.32,11.34 }, text = "Veículos de emergência possuem prioridade, de passagem!" },
                    { coords = { -728.75,-1621.26,24.58,249.45 }, text = "É proíbido estacionar em áreas cuja uma faixa vermelha está pintada na calçada." },
                    { coords = { -672.65,-1652.79,24.89,150.24 }, text = "Transitar com veículos danificados é crime!" },
                    { coords = { -694.81,-1681.66,25.0,85.04 }, text = "Aguarde, o examinador dará o resultado." },
                },
            },
        }
    },
}

ListQuestions = {
    [1] = {
        {            
            pergunta = 'Condutores que possuem habilitação A, podem dirigir quais veículos?',
            a = 'Todos veículo, menos trem.',
            b = 'Avião de caça e carro hatch.',
            c = 'Veículos motorizados com duas/três rodas.',
            d = 'Apenas carro.',
            resposta = 'C'
        },{                     
            pergunta = 'A carteira B, permite que o condutor transite com qual veículo?',
            a = 'Carro',
            b = 'Moto',
            c = 'Caminhão',
            d = 'Ônibus',
            resposta = 'A'
        },{                         
            pergunta = 'Estacionar o veículo na contramão, será punido com ?',
            a = 'Multa de dez mil reais.',
            b = 'Não será punido, pois é permitido por lei.',
            c = 'Multa e apreensão do veículo.',
            d = 'Apreensão do veículo, multa, condenado a cadeira elétrica.',
            resposta = 'C'
        },{                      
            pergunta = 'Transitar com o veículo em mau estado de conservação e segurança é considerada uma infração, podendo ser punida com ?',
            a = 'Multa',
            b = 'Multa e apreensão do veículo.',
            c = 'Multa e retenção do veículo até ocorrer a regularização.',
            d = 'Cadeia.',
            resposta = 'C'
        },{
            pergunta = 'Em caso de acidente de trânsito com vítima(s), podemos dizer que primeiros socorros são ?',
            a = 'as providências tomadas no local, iniciais e temporárias, até a chegada de socorro',
            b = 'o pronto atendimento da(s) vítima(s) em substituição às equipes da saúde',
            c = 'as ações que só podem ser realizadas por equipes profissionais',
            d = 'procedimentos de competência exclusiva de médicos no local do acidente',
            resposta = 'A'
        },{
            pergunta = 'Caso você esteja sendo ultrapassado por um veículo em uma rodovia, o que você deve fazer?',
            a = 'Acelerar o carro para evitar ser ultrapassado',
            b = 'Abrir a janela e xingar o outro motorista que está indo rápido demais.',
            c = 'Reduzir a velocidade para que o outro veículo consiga ultrapassar com segurança.',
            d = 'Jogar seu carro para cima do outro veículo para bater e jogar ele no acostamento.',
            resposta = 'C'
        },{
            pergunta = 'A distância percorrida pelo veículo do momento em que o condutor tira o pé do acelerador e o coloca sobre o pedal do freio é denominada ?',
            a = 'distância de frenagem',
            b = 'distância de seguimento',
            c = 'distância de reação',
            d = 'distância de parada',
            resposta = 'C'
        },{
            pergunta = 'Quando o motorista estacionar junto de hidrantes de incêndio devidamente identificados, terá como medida administrativa ?',
            a = 'remoção do veículo',
            b = 'recolhimento do CRLV',
            c = 'retenção do veículo',
            d = 'recolhimento da CNH',
            resposta = 'A'
        },{
            pergunta = 'A remoção do veículo pode ocorrer quando o condutor ?',
            a = 'Parar o veículo em um estacionamento',
            b = 'Não pagar seus impostos ou deixar carro estacionado em local impróprio',
            c = 'Dançar em lugar público',
            d = 'Andar com quantidade excessiva de pizzas em seu veículo',
            resposta = 'B'
        },{
            pergunta = 'O condutor que for pego andando de moto sem capacete, será punido com ?',
            a = 'Amor e carinho.',
            b = 'Somente uma multa de cem reais',
            c = 'Não será punido pois é permitido por lei',
            d = 'Multa, apreensão do veículo.',
            resposta = 'D'
        },{
            pergunta = 'O condutor que for pego promovendo ou participando de competições esportivas na via pública, sem autorização, será punido com',
            a = 'Multa de quatrocentos reais e pode ficar de 2 a 5 anos preso.',
            b = 'Multa, remoção da sua habilitação, apreensão do veículo.',
            c = 'Uma passagem para o Brasil',
            d = 'Multa e perde direito de utilizar o banco da cidade',
            resposta = 'B'
        },{
            pergunta = 'Caso seu pneu furar, você deve ?',
            a = 'Parar meu carro e chamar um mecânico porque não é possível andar sem pneu.',
            b = 'Andar devagar porque está furado e chamar a polícia',
            c = 'Andar mais rápido possível para evitar capotar',
            d = 'Acelerar máximo possível até perder a roda também',
            resposta = 'A'
        },{
            pergunta = 'Caso você possuir apenas habilitação A e for pego dirigindo um carro, você pode ser punido ?',
            a = 'Multa de 100 doláres, apreensão de veículo e retenção da sua habilitação',
            b = 'Apreendido e encaminhado a delegacia',
            c = 'Multa de 500 reais e remoção de veículo.',
            d = 'Multa de 100 reais e 2 anos de prisão',
            resposta = 'A'
        },{
            pergunta = 'O objetivo principal da sinalização de trânsito é ?',
            a = 'Controlar a velocidade dos veículos',
            b = 'Garantir uma via com bom fluxo e segura',
            c = 'Enfeitar a cidade',
            d = 'Proporcionar um ambiente amigável para motoristas',
            resposta = 'B'
        },
    },   
    [2] = {
        {            
            pergunta = 'Condutores que possuem habilitação A, podem dirigir quais veículos?',
            a = 'Todos veículo, menos trem.',
            b = 'Avião de caça e carro hatch.',
            c = 'Veículos motorizados com duas/três rodas.',
            d = 'Apenas carro.',
            resposta = 'C'
        },{                     
            pergunta = 'A carteira B, permite que o condutor transite com qual veículo?',
            a = 'Carro',
            b = 'Moto',
            c = 'Caminhão',
            d = 'Ônibus',
            resposta = 'A'
        },{                         
            pergunta = 'Estacionar o veículo na contramão, será punido com ?',
            a = 'Multa de dez mil reais.',
            b = 'Não será punido, pois é permitido por lei.',
            c = 'Multa e apreensão do veículo.',
            d = 'Apreensão do veículo, multa, condenado a cadeira elétrica.',
            resposta = 'C'
        },{                      
            pergunta = 'Transitar com o veículo em mau estado de conservação e segurança é considerada uma infração, podendo ser punida com ?',
            a = 'Multa',
            b = 'Multa e apreensão do veículo.',
            c = 'Multa e retenção do veículo até ocorrer a regularização.',
            d = 'Cadeia.',
            resposta = 'C'
        },{
            pergunta = 'Em caso de acidente de trânsito com vítima(s), podemos dizer que primeiros socorros são ?',
            a = 'as providências tomadas no local, iniciais e temporárias, até a chegada de socorro',
            b = 'o pronto atendimento da(s) vítima(s) em substituição às equipes da saúde',
            c = 'as ações que só podem ser realizadas por equipes profissionais',
            d = 'procedimentos de competência exclusiva de médicos no local do acidente',
            resposta = 'A'
        },{
            pergunta = 'Caso você esteja sendo ultrapassado por um veículo em uma rodovia, o que você deve fazer?',
            a = 'Acelerar o carro para evitar ser ultrapassado',
            b = 'Abrir a janela e xingar o outro motorista que está indo rápido demais.',
            c = 'Reduzir a velocidade para que o outro veículo consiga ultrapassar com segurança.',
            d = 'Jogar seu carro para cima do outro veículo para bater e jogar ele no acostamento.',
            resposta = 'C'
        },{
            pergunta = 'A distância percorrida pelo veículo do momento em que o condutor tira o pé do acelerador e o coloca sobre o pedal do freio é denominada ?',
            a = 'distância de frenagem',
            b = 'distância de seguimento',
            c = 'distância de reação',
            d = 'distância de parada',
            resposta = 'C'
        },{
            pergunta = 'Quando o motorista estacionar junto de hidrantes de incêndio devidamente identificados, terá como medida administrativa ?',
            a = 'remoção do veículo',
            b = 'recolhimento do CRLV',
            c = 'retenção do veículo',
            d = 'recolhimento da CNH',
            resposta = 'A'
        },{
            pergunta = 'A remoção do veículo pode ocorrer quando o condutor ?',
            a = 'Parar o veículo em um estacionamento',
            b = 'Não pagar seus impostos ou deixar carro estacionado em local impróprio',
            c = 'Dançar em lugar público',
            d = 'Andar com quantidade excessiva de pizzas em seu veículo',
            resposta = 'B'
        },{
            pergunta = 'O condutor que for pego andando de moto sem capacete, será punido com ?',
            a = 'Amor e carinho.',
            b = 'Somente uma multa de cem reais',
            c = 'Não será punido pois é permitido por lei',
            d = 'Multa, apreensão do veículo.',
            resposta = 'D'
        },{
            pergunta = 'O condutor que for pego promovendo ou participando de competições esportivas na via pública, sem autorização, será punido com',
            a = 'Multa de quatrocentos reais e pode ficar de 2 a 5 anos preso.',
            b = 'Multa, remoção da sua habilitação, apreensão do veículo.',
            c = 'Uma passagem para o Brasil',
            d = 'Multa e perde direito de utilizar o banco da cidade',
            resposta = 'B'
        },{
            pergunta = 'Caso seu pneu furar, você deve ?',
            a = 'Parar meu carro e chamar um mecânico porque não é possível andar sem pneu.',
            b = 'Andar devagar porque está furado e chamar a polícia',
            c = 'Andar mais rápido possível para evitar capotar',
            d = 'Acelerar máximo possível até perder a roda também',
            resposta = 'A'
        },{
            pergunta = 'Caso você possuir apenas habilitação A e for pego dirigindo um carro, você pode ser punido ?',
            a = 'Multa de 100 doláres, apreensão de veículo e retenção da sua habilitação',
            b = 'Apreendido e encaminhado a delegacia',
            c = 'Multa de 500 reais e remoção de veículo.',
            d = 'Multa de 100 reais e 2 anos de prisão',
            resposta = 'A'
        },{
            pergunta = 'O objetivo principal da sinalização de trânsito é ?',
            a = 'Controlar a velocidade dos veículos',
            b = 'Garantir uma via com bom fluxo e segura',
            c = 'Enfeitar a cidade',
            d = 'Proporcionar um ambiente amigável para motoristas',
            resposta = 'B'
        },
    },  
    [3] = {
        {            
            pergunta = 'Condutores que possuem habilitação A, podem dirigir quais veículos?',
            a = 'Todos veículo, menos trem.',
            b = 'Avião de caça e carro hatch.',
            c = 'Veículos motorizados com duas/três rodas.',
            d = 'Apenas carro.',
            resposta = 'C'
        },{                     
            pergunta = 'A carteira B, permite que o condutor transite com qual veículo?',
            a = 'Carro',
            b = 'Moto',
            c = 'Caminhão',
            d = 'Ônibus',
            resposta = 'A'
        },{                         
            pergunta = 'Estacionar o veículo na contramão, será punido com ?',
            a = 'Multa de dez mil reais.',
            b = 'Não será punido, pois é permitido por lei.',
            c = 'Multa e apreensão do veículo.',
            d = 'Apreensão do veículo, multa, condenado a cadeira elétrica.',
            resposta = 'C'
        },{                      
            pergunta = 'Transitar com o veículo em mau estado de conservação e segurança é considerada uma infração, podendo ser punida com ?',
            a = 'Multa',
            b = 'Multa e apreensão do veículo.',
            c = 'Multa e retenção do veículo até ocorrer a regularização.',
            d = 'Cadeia.',
            resposta = 'C'
        },{
            pergunta = 'Em caso de acidente de trânsito com vítima(s), podemos dizer que primeiros socorros são ?',
            a = 'as providências tomadas no local, iniciais e temporárias, até a chegada de socorro',
            b = 'o pronto atendimento da(s) vítima(s) em substituição às equipes da saúde',
            c = 'as ações que só podem ser realizadas por equipes profissionais',
            d = 'procedimentos de competência exclusiva de médicos no local do acidente',
            resposta = 'A'
        },{
            pergunta = 'Caso você esteja sendo ultrapassado por um veículo em uma rodovia, o que você deve fazer?',
            a = 'Acelerar o carro para evitar ser ultrapassado',
            b = 'Abrir a janela e xingar o outro motorista que está indo rápido demais.',
            c = 'Reduzir a velocidade para que o outro veículo consiga ultrapassar com segurança.',
            d = 'Jogar seu carro para cima do outro veículo para bater e jogar ele no acostamento.',
            resposta = 'C'
        },{
            pergunta = 'A distância percorrida pelo veículo do momento em que o condutor tira o pé do acelerador e o coloca sobre o pedal do freio é denominada ?',
            a = 'distância de frenagem',
            b = 'distância de seguimento',
            c = 'distância de reação',
            d = 'distância de parada',
            resposta = 'C'
        },{
            pergunta = 'Quando o motorista estacionar junto de hidrantes de incêndio devidamente identificados, terá como medida administrativa ?',
            a = 'remoção do veículo',
            b = 'recolhimento do CRLV',
            c = 'retenção do veículo',
            d = 'recolhimento da CNH',
            resposta = 'A'
        },{
            pergunta = 'A remoção do veículo pode ocorrer quando o condutor ?',
            a = 'Parar o veículo em um estacionamento',
            b = 'Não pagar seus impostos ou deixar carro estacionado em local impróprio',
            c = 'Dançar em lugar público',
            d = 'Andar com quantidade excessiva de pizzas em seu veículo',
            resposta = 'B'
        },{
            pergunta = 'O condutor que for pego andando de moto sem capacete, será punido com ?',
            a = 'Amor e carinho.',
            b = 'Somente uma multa de cem reais',
            c = 'Não será punido pois é permitido por lei',
            d = 'Multa, apreensão do veículo.',
            resposta = 'D'
        },{
            pergunta = 'O condutor que for pego promovendo ou participando de competições esportivas na via pública, sem autorização, será punido com',
            a = 'Multa de quatrocentos reais e pode ficar de 2 a 5 anos preso.',
            b = 'Multa, remoção da sua habilitação, apreensão do veículo.',
            c = 'Uma passagem para o Brasil',
            d = 'Multa e perde direito de utilizar o banco da cidade',
            resposta = 'B'
        },{
            pergunta = 'Caso seu pneu furar, você deve ?',
            a = 'Parar meu carro e chamar um mecânico porque não é possível andar sem pneu.',
            b = 'Andar devagar porque está furado e chamar a polícia',
            c = 'Andar mais rápido possível para evitar capotar',
            d = 'Acelerar máximo possível até perder a roda também',
            resposta = 'A'
        },{
            pergunta = 'Caso você possuir apenas habilitação A e for pego dirigindo um carro, você pode ser punido ?',
            a = 'Multa de 100 doláres, apreensão de veículo e retenção da sua habilitação',
            b = 'Apreendido e encaminhado a delegacia',
            c = 'Multa de 500 reais e remoção de veículo.',
            d = 'Multa de 100 reais e 2 anos de prisão',
            resposta = 'A'
        },{
            pergunta = 'O objetivo principal da sinalização de trânsito é ?',
            a = 'Controlar a velocidade dos veículos',
            b = 'Garantir uma via com bom fluxo e segura',
            c = 'Enfeitar a cidade',
            d = 'Proporcionar um ambiente amigável para motoristas',
            resposta = 'B'
        },
    },    
    [4] = {
        {            
            pergunta = 'Condutores que possuem habilitação A, podem dirigir quais veículos?',
            a = 'Todos veículo, menos trem.',
            b = 'Avião de caça e carro hatch.',
            c = 'Veículos motorizados com duas/três rodas.',
            d = 'Apenas carro.',
            resposta = 'C'
        },{                     
            pergunta = 'A carteira B, permite que o condutor transite com qual veículo?',
            a = 'Carro',
            b = 'Moto',
            c = 'Caminhão',
            d = 'Ônibus',
            resposta = 'A'
        },{                         
            pergunta = 'Estacionar o veículo na contramão, será punido com ?',
            a = 'Multa de dez mil reais.',
            b = 'Não será punido, pois é permitido por lei.',
            c = 'Multa e apreensão do veículo.',
            d = 'Apreensão do veículo, multa, condenado a cadeira elétrica.',
            resposta = 'C'
        },{                      
            pergunta = 'Transitar com o veículo em mau estado de conservação e segurança é considerada uma infração, podendo ser punida com ?',
            a = 'Multa',
            b = 'Multa e apreensão do veículo.',
            c = 'Multa e retenção do veículo até ocorrer a regularização.',
            d = 'Cadeia.',
            resposta = 'C'
        },{
            pergunta = 'Em caso de acidente de trânsito com vítima(s), podemos dizer que primeiros socorros são ?',
            a = 'as providências tomadas no local, iniciais e temporárias, até a chegada de socorro',
            b = 'o pronto atendimento da(s) vítima(s) em substituição às equipes da saúde',
            c = 'as ações que só podem ser realizadas por equipes profissionais',
            d = 'procedimentos de competência exclusiva de médicos no local do acidente',
            resposta = 'A'
        },{
            pergunta = 'Caso você esteja sendo ultrapassado por um veículo em uma rodovia, o que você deve fazer?',
            a = 'Acelerar o carro para evitar ser ultrapassado',
            b = 'Abrir a janela e xingar o outro motorista que está indo rápido demais.',
            c = 'Reduzir a velocidade para que o outro veículo consiga ultrapassar com segurança.',
            d = 'Jogar seu carro para cima do outro veículo para bater e jogar ele no acostamento.',
            resposta = 'C'
        },{
            pergunta = 'A distância percorrida pelo veículo do momento em que o condutor tira o pé do acelerador e o coloca sobre o pedal do freio é denominada ?',
            a = 'distância de frenagem',
            b = 'distância de seguimento',
            c = 'distância de reação',
            d = 'distância de parada',
            resposta = 'C'
        },{
            pergunta = 'Quando o motorista estacionar junto de hidrantes de incêndio devidamente identificados, terá como medida administrativa ?',
            a = 'remoção do veículo',
            b = 'recolhimento do CRLV',
            c = 'retenção do veículo',
            d = 'recolhimento da CNH',
            resposta = 'A'
        },{
            pergunta = 'A remoção do veículo pode ocorrer quando o condutor ?',
            a = 'Parar o veículo em um estacionamento',
            b = 'Não pagar seus impostos ou deixar carro estacionado em local impróprio',
            c = 'Dançar em lugar público',
            d = 'Andar com quantidade excessiva de pizzas em seu veículo',
            resposta = 'B'
        },{
            pergunta = 'O condutor que for pego andando de moto sem capacete, será punido com ?',
            a = 'Amor e carinho.',
            b = 'Somente uma multa de cem reais',
            c = 'Não será punido pois é permitido por lei',
            d = 'Multa, apreensão do veículo.',
            resposta = 'D'
        },{
            pergunta = 'O condutor que for pego promovendo ou participando de competições esportivas na via pública, sem autorização, será punido com',
            a = 'Multa de quatrocentos reais e pode ficar de 2 a 5 anos preso.',
            b = 'Multa, remoção da sua habilitação, apreensão do veículo.',
            c = 'Uma passagem para o Brasil',
            d = 'Multa e perde direito de utilizar o banco da cidade',
            resposta = 'B'
        },{
            pergunta = 'Caso seu pneu furar, você deve ?',
            a = 'Parar meu carro e chamar um mecânico porque não é possível andar sem pneu.',
            b = 'Andar devagar porque está furado e chamar a polícia',
            c = 'Andar mais rápido possível para evitar capotar',
            d = 'Acelerar máximo possível até perder a roda também',
            resposta = 'A'
        },{
            pergunta = 'Caso você possuir apenas habilitação A e for pego dirigindo um carro, você pode ser punido ?',
            a = 'Multa de 100 doláres, apreensão de veículo e retenção da sua habilitação',
            b = 'Apreendido e encaminhado a delegacia',
            c = 'Multa de 500 reais e remoção de veículo.',
            d = 'Multa de 100 reais e 2 anos de prisão',
            resposta = 'A'
        },{
            pergunta = 'O objetivo principal da sinalização de trânsito é ?',
            a = 'Controlar a velocidade dos veículos',
            b = 'Garantir uma via com bom fluxo e segura',
            c = 'Enfeitar a cidade',
            d = 'Proporcionar um ambiente amigável para motoristas',
            resposta = 'B'
        },
    },           
}

function shuffleKeys(tbl, correctAnswer)
    local Questions = {}
    local correctKey = nil  -- Para armazenar a nova chave da resposta correta após embaralhamento

    for key in pairs(tbl) do
        table.insert(Questions, key)
    end
    -- Embaralhar
    for i = #Questions, 2, -1 do
        local j = math.random(i)
        Questions[i], Questions[j] = Questions[j], Questions[i]
    end

    local numbers = 1
    local shuffled = {}
    for Key,Question in pairs(tbl) do
        shuffled[Key] = tbl[Questions[numbers]]
        if Questions[numbers] == correctAnswer then
            correctKey = Key
        end
        numbers = numbers + 1
    end
    return shuffled, correctKey
end

function Questions(index)
    if ListQuestions[tonumber(index)] then
        local allQuestions = ListQuestions[tonumber(index)]
        local selectedQuestions = getRandomQuestions(9, allQuestions)  -- Substituir por sua própria função
        local data = {}
        for index, value in ipairs(selectedQuestions) do
            local shuffledOptions,correctKey = shuffleKeys({
                ["A"] = value["a"],
                ["B"] = value["b"],
                ["C"] = value["c"],
                ["D"] = value["d"],
            }, value["resposta"])
            table.insert(data, {
                ["id"] = index,
                ["pergunta"] =  value["pergunta"],
                ["a"] = shuffledOptions["A"],
                ["b"] = shuffledOptions["B"],
                ["c"] = shuffledOptions["C"],
                ["d"] = shuffledOptions["D"],
                ["resposta"] = correctKey..index
            })
        end
        return data
    end
end

function getRandomQuestions(n, list)
    local randomIndices = {}
    local randomQuestions = {}
    while #randomIndices < n do
        local randIndex = math.random(1, #list)
        if not randomIndices[randIndex] then
            randomIndices[randIndex] = true
            table.insert(randomQuestions, list[randIndex])
        end
    end
    return randomQuestions
end