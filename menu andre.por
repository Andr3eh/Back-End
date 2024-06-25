programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> tx
	funcao inicio()
	{
		inteiro opcao
		faca
		{
			limpa()
			escreva("\t*******MENU PRINCIPAL*******\n")
			escreva("\t============================\n")
			escreva("\t[1] Consulta dia mês\n")
			escreva("\t[2]  Consulte de Siglas e Estados\n")
			escreva("\t[3]  Extenso de um número de(0-1000)\n")
			escreva("\t[4] Sorteio de Nomes\n")
      		escreva("\t[5] Ordena números\n")     		
			escreva("\t[6] Fim\n")
			escreva("\t============================\n")
			escreva("\tDigite sua opção: ")
			leia(opcao)
      limpa() 
			
			escolha(opcao)
			{
			
				caso 1:
				{
				 	dia_mes()	
				 	pare
				}							
				caso 2:
				{
					estados()
					pare
				}										
				caso 3:
				{
         				 ExtensoNumero()
					pare
				}										
				caso 4:
				{
         				 SorteioNomes()
					pare
				}									
				caso 5:
				{
         				 OrdenaNumeros()
					pare
				}
				caso 6:
				{
         				 escreva("Até logo")
					pare
				}
			
		         		
			     caso contrario:
				{
					escreva("\n\t[****opção invalida****]")
					u.aguarde(2000)
			  }
         
			}   
       
		}enquanto (opcao!=6) //faz este bloco da codigo enquanto a variavel opcao for diferente de 5 
	}
	funcao dia_mes()
	{
		cadeia mes[13] = {" , ", "Janeiro" , "Fevereiro", "Março", "Abril", "Maio","Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
		cadeia cont
		cadeia dia[8] = {" , ", "Domingo" , "Segunda-ferira", "Terça-ferira", "Quarta-ferira", "Quinta-ferira","Sexta-ferira", "Sabado"}
		inteiro resp
	faca{	
			limpa()
			escreva("Digite um numero\n ")
			leia(resp)
				se(resp <1 ou resp>7)
				{
					escreva("\t==========================================")
					escreva("\n\t\tDia Invalido \n")
				}
				senao
				{
					escreva("\n\t==========================================")
					escreva("\n\t\t"   +resp+ " Corresponde ao " +dia[resp])
					
					
				}
				se(resp <1 ou resp>13)
				{
					escreva("\n Mes Invalido \n")
						
					
				}
				senao
				{
					escreva("\n\t\t"   +resp+ " Corresponde a " +mes[resp])
					escreva("\n\t==========================================")
					u.aguarde(3000)
					limpa()
				}
			escreva("Deseja Continuar ? \n ")
			leia(cont)
			tx.caixa_baixa("sim")
		}enquanto(cont == "sim")
	}
	funcao estados()
	{
		cadeia estado [27][2], resp, continua
		inteiro i
		logico achou

		estado[0][0] =  "SP"  estado [0][1]= "São Paulo" 
		estado[1][0] =  "MG"  estado [1][1]= "Minas Gerais"
		estado[2][0] =  "RJ"  estado [2][1]="Rio de Janeiro"
		estado[3][0] =  "ES"  estado [3][1]="Espirito Santo"
		estado[4][0] =  "BA"  estado [4][1]="Bahia"
	
		estado[5][0] =  "AC"  estado [5][1]= "Acre" 
		estado[6][0] =  "AL"  estado [6][1]= "Alagoas"
		estado[7][0] =  "AP"  estado [7][1]= "Amapá"
		estado[8][0] =  "AM"  estado [8][1]="Amazonas"
		estado[9][0] =  "CE"  estado [9][1]="Ceará"
		estado[10][0] = "GO" estado [10][1]= "Goiás" 
		estado[11][0] = "MA" estado [11][1]= "Maranhão"
		estado[12][0] = "MT" estado [12][1]="Mato Grosso"
		estado[13][0] = "MS" estado [13][1]="Mato Grosso do Sul"
		estado[14][0] = "PA" estado [14][1]="Pará"
		estado[15][0] = "PB" estado [15][1]= "Paraíba"
		 
		estado[16][0] = "PR" estado [16][1]= "Paraná"
		estado[17][0] = "PE" estado [17][1]="Pernambuco"
		estado[18][0] = "PI" estado [18][1]="Piauí"
		estado[19][0] = "RN" estado [19][1]="Rio Grande do Norte"
		estado[20][0] = "RS" estado [20][1]= "Rio Grande do Sul" 
		estado[21][0] = "RO" estado [21][1]= "Rondônia"
		estado[22][0] = "RR" estado [22][1]="Roraima"
		estado[23][0] = "SC" estado [23][1]="Santa Catarina"
		estado[24][0] = "SE" estado [24][1]="Sergipe"
		estado[25][0] = "TO" estado [25][1]="Tocantins"
		estado[26][0] = "DF" estado [26][1]="Distrito Federeal"
		
		
		faca
		{
			limpa()
			escreva("digite a sigla de um estado \n")
			leia(resp)
			resp = tx.caixa_alta(resp)
			achou=falso
			para(i=0;i<27;i++)
			{
				se (resp == estado[i][0])
				{
					escreva(resp+ " corresponde a " +estado[i][1])
					achou=verdadeiro
					pare
					
				}
				senao se(resp == estado[i][1])
				{
					escreva(resp+ " corresponde a " +estado[i][0])
					achou=verdadeiro
					pare
				}	
			}
				 se(nao achou)
				{
					escreva("\n Sigla nao cadastrada")
				}

				escreva ("\nDeseja continuar sim/não ")
				leia(continua)
		}enquanto(tx.caixa_baixa(continua)=="s" ou tx.caixa_baixa(continua)=="sim")
	}	
		funcao ExtensoNumero()
		{
			inteiro n,ne,nd,nc
		cadeia resp
		faca{
			
			limpa()
			escreva("=========================================================")
			escreva("\n\t\t\t Digite um número  \n\t\t\t\t")
			leia(n)
			se(n<0 ou n>1000)
				{
					escreva("\n número fora da faixa")
				}
				se(n<100)
				{
					escreva(func_dezena(n))
				}
				se(n>=101)
				{
					escreva(fun_centena(n))
				}
				se(n==100)
				{
					escreva("cem")
				}
				se(n==1000)
				{
					escreva("mil")
				}
				escreva("\n\n\t Desenha Continuar ? R:  (Resp: Sim/Nao) \n")
				escreva("========================================================= \n\n\t\t\t")
			leia(resp)
			
			resp = tx.caixa_baixa(resp)
		}enquanto (resp=="sim")			
					
		}
		funcao cadeia func_dezena (inteiro p1)
		{
			cadeia unidade[]={"zero","um", "dois", "tres", "quatro","cinco","seis","sete","oito","nove","dez","onze","doze","treze","quatorze","quinze","dezeseis","dezesete","dezoito","dezenove"}
			cadeia dezena[]={"","", "vinte", "trinta", "quarenta", "cinquenta","sesenta","setenta","oitenta","noventa","cem"}
			cadeia extencao=""
			inteiro ne,nd,nc
	
			 se (p1<20)
					{
						extencao = unidade[p1]
					}
					senao se (p1<100)
					{
						ne=p1/10
						nd=p1%10
						extencao = dezena[ne]
						se(nd>0)
						{
							extencao +=" e " +unidade[nd]
						}
					}		
				senao se (p1==100)
				{
					extencao = "cem"
				}
			retorne extencao
		}
		funcao cadeia fun_centena (inteiro n1)
		{
	
			cadeia unidade[]={"zero","um", "dois", "tres", "quatro","cinco","seis","sete","oito","nove","dez","onze","doze","treze","quatorze","quinze","dezeseis","dezesete","dezoito","dezenove"}
			cadeia dezena[]={"","", "vinte", "trinta", "quarenta", "cinquenta","sesenta","setenta","oitenta","noventa","cem"}
			cadeia centena[]={"", "cento", "duzentos","trezentos", "quatrocentos", "quinhentos","seisentos","setecentos","oitocentos","novecentos","mil"}
			cadeia extencao=""
			inteiro ne, nc, nd
	
				
				
				se (n1<1000)
				{
					ne=n1/100
					nc=(n1%100)/10
					nd=n1%10
					extencao = centena [ne]
					
					se(nc == 1 e nc <=9 )
					{
						nc=n1%100
				     	extencao +=" e " +unidade[nc]
				     }
				     senao se(nc==0 e nd<=9)
				     {
				     	extencao += " e " +unidade[nd]
				     }
					senao se (nc>=2 e nd>0)   
					{
						 extencao +=" e " +dezena[nc]+ " e " +unidade[nd] 
					}			
					senao se (nc > 1 )
					{
						extencao +=" e " +dezena[nc]
					}
					senao se (n1==1000)
				{
					extencao = "mil"
				}
			}
			retorne extencao 
		}
		funcao  SorteioNomes()
		{
			cadeia nome[5]
		cadeia sorteado[5]
		inteiro i, ns
		

		limpa()
		
			para(i=0;i<5;i++)
			{
				escreva("\nDigite o " + (i+1) + "º nome: ")
				leia(nome[i])
			}
			// Sorteando Nomes //
		
			para(i=0;i<5;i++)
			{
				faca
				{
					ns = u.sorteia(0, 4)
				}enquanto ( nome[ns] == "-")
				sorteado[i]=nome[ns]
				nome[ns]="-"
				
			}
			
		
		
			// Mostrando os nomes sorteados
			escreva("\n=========================\n")
			escreva("\n**** Nomes Sorteados ****\n")
			escreva("\n=========================\n")
			para(i=0;i<5;i++)
			{
				escreva((i+1) + "º sorteado: " + sorteado[i])
				escreva("\n")
				u.aguarde(800)
			}
		}
		funcao OrdenaNumeros()
		{
				inteiro n[10], x=0, b=0,i
		cadeia resp

			faca{
				limpa()
				para(i=0; i<=9; i++)
				{
					escreva((i+1)+ " ° numero:  ")
					leia(n[i])
				}
				
					para(i=0; i < 9; i++)
					{
						para(x=9; x>0; x--)
						{
							se(n[x] < n[x-1])
							{
								b = n[x]
								n[x] = n[x-1]
								n[x-1] = b
				
							}
						}
					}
					escreva("================================== \n")
					escreva(" os numeros crescentes são \n")
					para(i=0; i<=9; i++)
						{
							escreva(n[i]+ " " )
							
						}
					escreva("\n ==================================\n")
					
			
					para(i=0; i < 10; i++)
					{
						para(x=9; x>0; x--)
						{
							se(n[x] > n[x-1])
							{
								b = n[x-1]
								n[x-1] = n[x]
								n[x]= b
				
							}
						}
					}
					escreva("\n================================== \n")
					escreva("numeros decrecentes  \n")
					para(i=0; i<=9; i++)
						{
							escreva(n[i]+ " " )
							
						}
					escreva("\n ================================== \n")

					escreva("Deseja Continuar  \n")
					leia(resp)

					tx.caixa_baixa(resp)

					
			}enquanto(resp == "sim")
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8655; 
 * @DOBRAMENTO-CODIGO = [69, 109, 178, 216, 243, 285];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */