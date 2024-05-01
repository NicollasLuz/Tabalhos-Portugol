programa {
  funcao inicio() {
    real prego, parafuso, rebite, martelo, serrote, tekBond, rebitadora, total
    real vl_prego, vl_parafuso, vl_rebite, vl_martelo, vl_serrote, vl_tekBond, vl_rebitadora
    inteiro qtd_prego, qtd_parafuso, qtd_rebite, qtd_martelo, qtd_serrote, qtd_tekBond, qtd_rebitadora, produto, pag
    cadeia nome
    caracter continuar

    prego = 0.10
    parafuso = 0.15
    rebite = 0.05
    martelo = 25.90
    serrote = 47.53
    tekBond = 18.80
    rebitadora = 28.48

    vl_martelo = 0
    vl_parafuso = 0
    vl_prego = 0 
    vl_rebitadora = 0 
    vl_rebite = 0 
    vl_serrote = 0
    vl_tekBond = 0 

    escreva("Bom dia seja bem vindo a ferragista online Tek Bonders")
    escreva("\nDigite seu nome para fazer o cadastro: ")
    leia(nome)
    escreva ("\nQuais produtos você vai levar hoje ", nome, "?: ")
    escreva ("\nE aí qual porduto vai levar, digite o respectivo número para cada produto!!: ")
    
    faca {
    escreva ("\nAqui está nosso catálogo:\n 1. Prego por 0.10 \n 2. Parafuso por 0.15 \n 3. Rebite por 0.05 \n 4. Martelo por 25.90 \n 5. Serrote por 47.53 \n 6. TekBond por 18.80 \n 7. Rebitadora por  28.48\n")
    escreva("Digite o número do produto: ")
    leia (produto)
    
    escolha (produto){
      caso 1:
        escreva("Qual a quantidade de pregos?: ")
        leia(qtd_prego)
        vl_prego = prego * qtd_prego
        escreva("\n O valor em que você terá que pagar em prego(s) será de: ", vl_prego)
          pare 
      caso 2:
        escreva("Qual a quantidade de parafusos?: ")
        leia(qtd_parafuso)
        vl_parafuso = parafuso * qtd_parafuso
        escreva("\n O valor em que você terá que pagar em parafuso(s) será de: ", vl_parafuso)
          pare
      caso 3: 
        escreva("Qual a quantidade de rebites?: ")
        leia(qtd_rebite)
        vl_rebite = rebite * qtd_rebite
        escreva("\n O valor em que você terá que pagar em rebite(s) será de: ", vl_rebite)
          pare
      caso 4: 
        escreva("Qual a quantidade de martelos?: ")
        leia(qtd_martelo)
        vl_martelo = martelo * qtd_martelo
        escreva("\n O valor em que você terá que pagar em martelo(s) será de: ", vl_martelo)
          pare
      caso 5: 
        escreva("Qual a quantidade de serrotes?: ")
        leia(qtd_serrote)
        vl_serrote = serrote * qtd_serrote
        escreva("\n O valor em que você terá que pagar em serrote(s) será de: ", vl_serrote)
          pare
      caso 6: 
        escreva("Qual a quantidade de tek Bonds?: ")
        leia(qtd_tekBond)
        vl_tekBond = tekBond * qtd_tekBond
        escreva("\n O valor em que você terá que pagar em tek Bond(s) será de: ", vl_tekBond)
          pare
      caso 7: 
        escreva("Qual a quantidade de rebitadoras?: ")
        leia(qtd_rebitadora)
        vl_rebitadora = rebitadora * qtd_rebitadora
        escreva("\n O valor em que você terá que pagar em rebitadora(s) será de: ", vl_rebitadora)
          pare
      }
    escreva("\n Quer comprar mais algum produto <s/n>")
    leia(continuar)
    }
    enquanto (continuar != "n")
    limpa()
    total = vl_prego + vl_parafuso + vl_rebite + vl_martelo + vl_serrote + vl_tekBond + vl_rebitadora
    escreva(nome, " a valor total da sua compra ficou em: ", total)
    escreva("Qual a forma de pagamento? \n 1. Dinheiro \n 2. Cartão \n 3. Pix \n 4. BQ")
    leia(pag)
    escolha (pag){
      caso 1: 
        se (total > 15)
          total - 4
          escreva("Em dinheiro o preço fica em ", total, "pode pagar lá no carrinho")
    }
  }
}