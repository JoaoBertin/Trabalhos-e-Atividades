Algoritmo "Sistema de Funcion�rios"


Var nome, cpf, rg, endereco, filiacao, dependentes, cargo, setor, idade, observacao, consulta, senha: caractere
   qtdependentes, excluir, alterar: inteiro
   sair, sair_excluir, sair_alterar: logico


Inicio
   sair:=Verdadeiro
   sair_excluir:=Verdadeiro
   sair_alterar:=Verdadeiro

   escreval("--------------- Iniciando Sistema de Funcion�rios ----------------")
   escreval("")
   escreva("Informe o seu Nome: ")
   leia(nome)
   escreva("Informe o seu CPF: ")
   leia(cpf)
   escreva("Informe o seu RG: ")
   leia(rg)
   escreva("Informe o seu Endere�o: ")
   leia(endereco)
   escreva("Informe a sua Filia��o(Pai ou M�e): ")
   leia(filiacao)
   escreva("Informe a sua quantidade de Dependentes: ")
   leia(qtdependentes)
   se (qtdependentes > 0) ent�o
      escreval("Informe o(s) seu(s) Dependente(s)")
      escreva("(Todos devem ser informados na mesma linha):")
      leia(dependentes)
   fimse
   se (qtdependentes <= 0) ent�o
      dependentes:="Sem Dependentes"
   fimse
   escreva("Informe o seu Cargo: ")
   leia(cargo)
   escreva("Informe o seu Setor: ")
   leia(setor)
   escreva("Informe a sua Idade: ")
   leia(idade)
   escreva("Informe uma Observa��o ")
   escreval("(Se possui alguma necessidade especial ou algo que deve ser mencionado): ")
   leia(observacao)
   enquanto (sair = Verdadeiro) fa�a
      escreva("Digite 1 para Consulta dos dados, 2 para Exclus�o, 3 para Altera��o ou 'Sair' para encerrar: ")
      leia(consulta)
      consulta:=maiusc(consulta)
      escolha consulta
      caso "1"
         escreval("Voc� est� no modo Consulta")
         escreva("Digite o Nome, CPF, Cargo ou Setor para proceder: ")
         leia(senha)
         se (senha = nome) ou (senha = cpf) ou (senha = cargo) ou (senha = setor) ent�o
            escreval("")
            escreval("Seu Perfil:")
            escreval("    Nome: ", nome)
            escreval("    CPF: ", cpf)
            escreval("    RG: ", rg)
            escreval("    Endere�o: ", endereco)
            escreval("    Filia��o: ", filiacao)
            escreval("    Dependente(s): ", dependentes)
            escreval("    Cargo: ", cargo)
            escreval("    Setor: ", setor)
            escreval("    Idade: ", idade)
            escreval("    OBS: ", observacao)
         sen�o
            escreval("! Senha Incorreta !")
         fimse
      caso "2"
         escreval("Voc� est� no modo Exclus�o")
         escreva("Digite o Nome ou CPF para proceder: ")
         leia(senha)
         se (senha = nome) ou (senha = cpf) ent�o
            enquanto (sair_excluir = Verdadeiro) fa�a
               escreval("")
               escreval("O que deseja excluir?")
               escreval("    Nome: ", nome," - 1")
               escreval("    CPF: ", cpf," - 2")
               escreval("    RG: ", rg," - 3")
               escreval("    Endere�o: ", endereco," - 4")
               escreval("    Filia��o: ", filiacao," - 5")
               escreval("    Dependente(s): ", dependentes," - 6")
               escreval("    Cargo: ", cargo," - 7")
               escreval("    Setor: ", setor," - 8")
               escreval("    Idade: ", idade," - 9")
               escreval("    OBS: ", observacao, " - 10")
               escreval("    EXCLUIR TUDO - 11")
               escreval(" <- Voltar: - 0")
               escreva("Digite o n�mero indicado para cada elemento: ")
               leia(excluir)
               se (excluir = 1) ent�o
                  nome:="N/A"
               fimse
               se (excluir = 2) ent�o
                  cpf:="N/A"
               fimse
               se (excluir = 3) ent�o
                  rg:="N/A"
               fimse
               se (excluir = 4) ent�o
                  endereco:="N/A"
               fimse
               se (excluir = 5) ent�o
                  filiacao:="N/A"
               fimse
               se (excluir = 6) ent�o
                  dependentes:="N/A"
               fimse
               se (excluir = 7) ent�o
                  cargo:="N/A"
               fimse
               se (excluir = 8) ent�o
                  setor:="N/A"
               fimse
               se (excluir = 9) ent�o
                  idade:="N/A"
               fimse
               se (excluir = 10) ent�o
                  observacao:="N/A"
               fimse
               se (excluir = 11) ent�o
                  nome:="N/A"
                  cpf:="N/A"
                  rg:="N/A"
                  endereco:="N/A"
                  filiacao:="N/A"
                  dependentes:="N/A"
                  cargo:="N/A"
                  setor:="N/A"
                  idade:="N/A"
                  observacao:="N/A"
               fimse
               se (excluir = 0) ent�o
                  sair_excluir:=Falso
               fimse
            fimenquanto
         sen�o
            escreval("! Senha Incorreta !")
         fimse
      caso "3"
         escreval("Voc� est� no modo Altera��o")
         escreva("Digite o Nome ou CPF para proceder: ")
         leia(senha)
         se (senha = nome) ou (senha = cpf) ent�o
            enquanto (sair_alterar = Verdadeiro) fa�a
               escreval("")
               escreval("O que deseja alterar?")
               escreval("    Nome: ", nome," - 1")
               escreval("    CPF: ", cpf," - 2")
               escreval("    RG: ", rg," - 3")
               escreval("    Endere�o: ", endereco," - 4")
               escreval("    Filia��o: ", filiacao," - 5")
               escreval("    Dependente(s): ", dependentes," - 6")
               escreval("    Cargo: ", cargo," - 7")
               escreval("    Setor: ", setor," - 8")
               escreval("    Idade: ", idade," - 9")
               escreval("    OBS: ", observacao," - 10")
               escreval(" <- Voltar: - 0")
               escreva("Digite o n�mero indicado para cada elemento: ")
               leia(alterar)
               se (alterar = 1) ent�o
                  escreva("Digite o novo Nome: ")
                  leia(nome)
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 2) ent�o
                  escreva("Digite o novo CPF: ")
                  leia(cpf)
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 3) ent�o
                  escreva("Digite o novo RG: ")
                  leia(rg)
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 4) ent�o
                  escreva("Digite o novo Endere�o: ")
                  leia(endereco)
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 5) ent�o
                  escreva("Digite a nova Filia��o: ")
                  leia(filiacao)
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 6) ent�o
                  escreva("Digite a nova quatidade de Dependentes: ")
                  leia(qtdependentes)
                  se (qtdependentes > 0) ent�o
                     escreval("Informe o(s) seu(s) Dependente(s)")
                     escreva("(Todos devem ser informados na mesma linha):")
                     leia(dependentes)
                  fimse
                  se (qtdependentes <= 0) ent�o
                     dependentes:="Sem Dependentes"
                  fimse
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 7) ent�o
                  escreva("Digite o novo Cargo: ")
                  leia(cargo)
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 8) ent�o
                  escreva("Digite o novo Setor: ")
                  leia(setor)
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 9) ent�o
                  escreva("Digite a nova Idade: ")
                  leia(idade)
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 10) ent�o
                  escreva("Digite a nova Observa��o: ")
                  leia(observacao)
                  escreval("Altera��o feita com sucesso!")
               fimse
               se (alterar = 0) ent�o
                  sair_alterar:=Falso
               fimse
            fimenquanto
         sen�o
            escreval("! Senha Incorreta !")
         fimse
      caso "SAIR"
         escreval("")
         escreval("Programa encerrado")
         sair:=Falso
      outrocaso
         escreval("! Digite um comando v�lido !")
         escreval("")
      fimescolha
   fimenquanto

Fimalgoritmo