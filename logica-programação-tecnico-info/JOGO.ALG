Algoritmo "JOGO"
// Descri��o   : Jogo de pedra, papel e tesoura
// Autor(a)    : Fernanda Ayres Ruaro
// Data atual  : 10/04/2021
Var
qntdRodadas, i, aux: inteiro
jogador1, jogador2: inteiro
vitoriaJog1, vitoriaJog2: inteiro
nome1, nome2: caracter
Inicio
//inicio do la�o de repeti��o para pelo menos uma vez rodar o jogo
//no final o jogador decide se quer jogar novamente
repita
    vitoriaJog1 <- 0
    vitoriaJog2 <- 0
    
    timer(300)
    escreva("Informe o nome do jogador 1: ")
    leia(nome1)
    escreva("Informe o nome do jogador 2: ")
    leia(nome2)
    limpatela
    //o jogador informa quantas rodadas vai querer jogar em cada partida
    escreva("Informe a quantidade de rodadas: ")
    leia(qntdRodadas)
    limpatela
    
    timer(1000)
    escreva("3...")
    escreva("2...")
    escreva("1...")
    escreva("J�!!!")
    limpatela
    timer(50)
    
    //inicio de um la�o dentro do la�o principal, este controla as rodadas
    para i de 1 ate qntdRodadas faca 1
        //bloco que v�lida e armazena a jogado do jogador 1 a cada partida:
        repita
            timer(200)
            escreval("RODADA ", i)
            escreval("Vez do jogador 1:")
            escreval("1- Pedra | 2- Papel | 3- Tesoura")
            escreva("Informe o n�mero da jogada: ")
            leia(jogador1)
            se (jogador1 < 1) ou (jogador1 > 3)entao
                limpatela
                escreval("Valor INV�LIDO!")
                escreval("Informe novamente outro valor")
                timer(1000)
            fimse
            limpatela
        ate (jogador1 >= 1) e (jogador1 <= 3)
        //bloco que v�lida e armazena a jogado do jogador 2 a cada partida:
        repita
            timer(200)
            escreval("RODADA ", i)
            escreval("Vez do jogador 2:")
            escreval("1- Pedra | 2- Papel | 3- Tesoura")
            escreva("Informe o n�mero da jogada: ")
            leia(jogador2)
            se (jogador2 < 1) ou (jogador2 > 3)entao
                limpatela
                escreval("Valor INV�LIDO!")
                escreval("Informe novamente outro valor")
                timer(1000)
            fimse
            limpatela
        ate (jogador2 >= 1) e (jogador2 <= 3)
        timer(50)
        //desvios condicionais para controlar quem � o vencedor de cada rodada
        se (jogador1 = 1) e (jogador2 = 2)entao
            escreval("VIT�RIA DO JOGADOR 2")
            vitoriaJog2 <- vitoriaJog2 + 1
        senao
            se (jogador1 = 1) e (jogador2 = 3)entao
                escreval("VIT�RIA DO JOGADOR 1")
                vitoriaJog1 <- vitoriaJog1 + 1
            senao
                se (jogador1 = 2) e (jogador2 = 1)entao
                    escreval("VIT�RIA DO JOGADOR 1")
                    vitoriaJog1 <- vitoriaJog1 + 1
                senao
                    se (jogador1 = 2) e (jogador2 = 3)entao
                        escreval("VIT�RIA DO JOGADOR 2")
                        vitoriaJog2 <- vitoriaJog2 + 1
                    senao
                        se (jogador1 = 3) e (jogador2 = 1)entao
                            escreval("VIT�RIA DO JOGADOR 2")
                            vitoriaJog2 <- vitoriaJog2 + 1
                        senao
                            se (jogador1 = 3) e (jogador2 = 2)entao
                                escreval("VIT�RIA DO JOGADOR 1")
                                vitoriaJog1 <- vitoriaJog1 + 1
                            senao
                                se (jogador1 = jogador2)entao
                                    escreval("EMPATE")
                                fimse
                            fimse
                        fimse
                    fimse
                fimse
            fimse
        fimse
        timer(1000)
        limpatela
        timer(50)
    fimpara

    //desvios condicionais para verificar quem ganhou o jogo
    se (vitoriaJog1 = vitoriaJog2)entao
        escreval(nome1, " e ", nome2, " EMPATARAM!")
    senao
        se (vitoriaJog1 < vitoriaJog2)entao
            escreval("VIT�RIA DO JOGADOR 2!! PARAB�NS ", nome2, " !!")
        senao
            se (vitoriaJog1 > vitoriaJog2)entao
                escreval("VIT�RIA DO JOGADOR 1!! PARAB�NS ", nome1, " !!")
            fimse
        fimse
    fimse
    timer(2000)
    limpatela
    timer(10)
    
    //bloco de condi��o que controla se o jogador quer jogar novamente e v�lida a resposta
    repita
        timer(100)
        escreval("Quer jogar novamente?")
        escreva("1- SIM / 2- N�O   ")
        leia(aux)
        se(aux < 1) ou (aux > 2)entao
            limpatela
            escreval("Valor informado INV�LIDO!!")
            escreval("Informe um valor v�lido")
            timer(700)
        fimse
        limpatela
        timer(100)
    ate (aux = 1) ou (aux = 2) //quando jogador informar um valor v�lido sai do loop
ate (aux = 2)
//esta condi��o controla se ir� se repetir o jogo
//se o usu�rio digitar 1 (SIM) a condi��o ser� falsa e ir� repetir o jogo
//se o usu�rio digitar 2 (N�O) a condi��o ser� verdadeiro e ir� sair do la�o de repeti��o, finalizando o jogo
Fimalgoritmo