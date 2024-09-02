programa {
  funcao inicio() {
    real saldo = 0
    real saque, deposito
    cadeia controle
    inteiro menu
    cadeia extrato = ""
    real investimento, rendimento, meses
    enquanto(menu != 0){
      escreva("|----------MENU----------|\n")
      escreva("| 1-SALDO                |\n")
      escreva("| 2-SAQUE                |\n")
      escreva("| 3-DEPOSITO             |\n")
      escreva("| 4-SAIR                 |\n")
      escreva("|5: EXTRATO              |\n")
      escreva("|6: INVESTIMENTO         |\n")
      escreva("| 0-SAIR                 |\n")
      escreva("|------------------------|\n")
      escreva("| ESCOLHA -> ")
      leia(menu)
      limpa()
      escolha(menu){
        caso 1:
        escreva("Saldo = ", saldo, "\n")
        pare
        caso 2:
        escreva("Digite o valor para sacar: ")
        leia(saque)
        enquanto(saque < 0){
          escreva("Valor invalido digite novamente: ")
          leia(saque)
          
        }
        se(saque > saldo){
          escreva("Não autorizado!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao{
          saldo = saldo - saque
          extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
          escreva("Saque realizado com sucesso!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        pare
        caso 3:
        escreva("Digite o valor para depositar: ")
        leia(deposito)
        enquanto(deposito<0){
          escreva("Valor invalido digite novamente: ")
          leia(deposito)
        }
        saldo = saldo + deposito
        extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
        escreva("Deposito realizado com sucesso!\n")
        escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        caso 4:
        escreva(extrato)
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        caso 5: escreva (extrato)

       caso 6: 
       escreva ("DIGITE O VALOR QUE DESEJA INVESRTIR: ")
       leia(investimento)
       se (investimento > saldo){
       escreva("SALDO INSUFICIENTE!!\n")
       }
       senao {
       escreva ("INSIRA A QUANTIDADE DE MESES QUE DESEJA INVESTIR: ")
       saldo = saldo - investimento
       leia (meses)
       para (inteiro contador = 0; contador<meses; contador++ ){
        rendimento = investimento * 1.02
        investimento = rendimento
       }
       saldo = saldo + investimento
       escreva ("O RENDIMENTO FINAL FOI DE: R$" + investimento + "\n" )
       }

      }
    }
  }
}
