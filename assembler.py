"""
- Criado em 07/Fevereiro/2022
- Atualizado em 19/04/2023

@autor: Marco Mello e Paulo Santos

Regras:

1) O Arquivo ASM.txt não pode conter linhas iniciadas com caracteres ' ' ou '\n')
2) Linhas somente com comentários são excluídas 
3) Instruções sem comentário no arquivo ASM receberão como comentário no arquivo BIN a própria instrução
4) Exemplo de codigo invalido:
                            0.___JSR @14 #comentario1
                            1.___#comentario2           << Invalido ( Linha somente com comentário )
                            2.___                       << Invalido ( Linha vazia )
                            3.___JMP @5  #comentario3
                            4.___JEQ @9
                            5.___NOP
                            6.___NOP
                            7.___                       << Invalido ( Linha vazia )
                            8.___LDI $5                 << Invalido ( Linha iniciada com espaço (' ') )
                            9.___ STA $0
                            10.__CEQ @0
                            11.__JMP @2  #comentario4
                            12.__NOP
                            13.__ LDI $4                << Invalido ( Linha iniciada com espaço (' ') )
                            14.__CEQ @0
                            15.__JEQ @3
                            16.__#comentario5           << Invalido ( Linha somente com comentário )
                            17.__JMP @13
                            18.__NOP
                            19.__RET
                                
5) Exemplo de código válido (Arquivo ASM.txt):
                            0.___JSR @14 #comentario1
                            1.___JMP @5  #comentario3
                            2.___JEQ @9
                            3.___NOP
                            4.___NOP
                            5.___LDI $5
                            6.___STA $0
                            7.___CEQ @0
                            8.___JMP @2  #comentario4
                            9.___NOP
                            10.__LDI $4
                            11.__CEQ @0
                            12.__JEQ @3
                            13.__JMP @13
                            14.__NOP
                            15.__RET
                            
6) Resultado do código válido (Arquivo BIN.txt):
                            0.__tmp(0) := x"90E"; -- comentario1
                            1.__tmp(1) := x"605"; -- comentario3
                            2.__tmp(2) := x"709"; -- JEQ @9
                            3.__tmp(3) := x"000"; -- NOP
                            4.__tmp(4) := x"000"; -- NOP
                            5.__tmp(5) := x"405"; -- LDI $5
                            6.__tmp(6) := x"500"; -- STA $0
                            7.__tmp(7) := x"800"; -- CEQ @0
                            8.__tmp(8) := x"602"; -- comentario4
                            9.__tmp(9) := x"000"; -- NOP
                            10._tmp(10) := x"404"; -- LDI $4
                            11._tmp(11) := x"800"; -- CEQ @0
                            12._tmp(12) := x"703"; -- JEQ @3
                            13._tmp(13) := x"60D"; -- JMP @13
                            14._tmp(14) := x"000"; -- NOP
                            15._tmp(15) := x"A00"; -- RET

"""

# importando biblioteca para tratar o path
import os

current_path = os.path.dirname(os.path.abspath(__file__))
inputASM = current_path + '/ASM.txt' #Arquivo de entrada que contém o código em assembly
outputBIN = current_path + '/BIN.txt' #Arquivo de saída que contém o binário formatado para VHDL
outputMIF = current_path + '/initROM.mif' #Arquivo de saída que contém o binário formatado para .mif

noveBits = True

#definição dos mnemônicos e seus
#respectivo OPCODEs (em Hexadecimal)
mne =	{ 
       "NOP":   "0",
       "LDA":   "1",
       "SOMA":  "2",
       "SUB":   "3",
       "LDI":   "4",
       "STA":   "5",
       "JMP":   "6",
       "JEQ":   "7",
       "CEQ":   "8",
       "JSR":   "9",
       "RET":   "A",

}

# 1. Identificar as linhas com labels no arquivo ASM.
labels = {}
constantes = {}
cleaned_lines = []

#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 2 dígitos (8 bits)
def converteArroba(line):
    line = line.split('@')
    line[1] = hex(int(line[1]))[2:].upper().zfill(2)
    line = ''.join(line)
    return line
    
#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 2 dígitos (8 bits) e...
#concatena com o bit de habilita 
def converteArroba9bits(line):
    line = line.split('@')
    # se for str em line, precisa acessar o dicionario de labels
    if line[1] in labels:
        line[1] = labels[line[1]]
        
    if line[1] in constantes:
        line[1] = constantes[line[1]]

    if(int(line[1]) > 255 ):
        line[1] = str(int(line[1]) - 256)
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '1' & x\"" + line[1]
    else:
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '0' & x\"" + line[1]
    line = ''.join(line)
    return line
 
#Converte o valor após o caractere cifrão'$'
#em um valor hexadecimal de 2 dígitos (8 bits) 
def converteCifrao(line):
    line = line.split('$')
    line[1] = hex(int(line[1]))[2:].upper().zfill(2)
    line = ''.join(line)
    return line

#Converte o valor após o caractere arroba '$'
#em um valor hexadecimal de 2 dígitos (8 bits) e...
#concatena com o bit de habilita 
def converteCifrao9bits(line):
    
    line = line.split('$')

    if line[1] in constantes:
        line[1] = constantes[line[1]]
    if(int(line[1]) > 255 ):
        line[1] = str(int(line[1]) - 256)
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '1' & x\"" + line[1]
    else:
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '0' & x\"" + line[1]
    line = ''.join(line)
    return line
        
#Define a string que representa o comentário
#a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

#Remove o comentário a partir do caractere cerquilha '#',
#deixando apenas a instrução
def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line
    
#Consulta o dicionário e "converte" o mnemônico em
#seu respectivo valor em hexadecimal
def trataMnemonico(line):
    line = line.replace("\n", "") #Remove o caracter de final de linha
    line = line.replace("\t", "") #Remove o caracter de tabulacao
    line = line.split(' ')
    print(f'line: {line}')
    # verificar se é intrucao ou label
    if line[0] in mne:  
        line[0] = mne[line[0]]
    else:
        line[0] = line[0].replace(":", "")
        line[0] = labels[line[0]]
    line = "".join(line)
    return line

def process_labels(lines):
    
    cont_comentarios = 0
    cont_linhas_branco = 0
    
    for i, line in enumerate(lines):
        
        # quando encontrar : é label
        # quando encontrar = é constante
        # as cosntantes vem antes das labels
        # nao contar as linhas das contantes como linhas de codigo
        
        num_consts = len(list(constantes.keys()))
        num_labels = len(list(labels.keys()))
        
        if line.startswith('#'):
            cont_comentarios += 1
        
        elif line.isspace():
            cont_linhas_branco += 1
            
        elif '=' in line:
            constante = line.split('=')
            chave = constante[0].replace(" ", "")
            chave = chave.replace("\t", "")
            chave = chave.strip()
            valor = constante[1].replace(" ", "")
            valor = valor.replace("\t", "")
            valor = valor.strip()
            constantes[chave] = str(valor)
        
        elif ':' in line:
            label = line.split(':')
            label = label[0].replace(" ", "")
            label = label.replace("\t", "")
            label = label.strip()
            labels[label] = str(i - num_consts - num_labels - cont_comentarios - cont_linhas_branco)
            
        else:
            cleaned_lines.append(line.strip())
    
    return labels, cleaned_lines

with open(inputASM, "r") as f:
    lines = f.readlines()
    labels, cleaned_lines = process_labels(lines)
    
# escrevendo as linha limpas
saida_codigo_limpo = current_path + '/codigo_limpo.txt'
with open(saida_codigo_limpo, "w") as f:
    for line in cleaned_lines:
        f.write(line + "\n")
    
with open(outputBIN, "w+") as f:  #Abre o destino BIN

    cont = 0 #Cria uma variável para contagem
    
    for line in cleaned_lines:        
        
        #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")
            print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug
        
        #Se a linha for válida para conversão, executa
        else:
            #Exemplo de linha => 1. JSR @14 #comentario1
            comentarioLine = defineComentario(line).replace("\n","") #Define o comentário da linha. Ex: #comentario1
            instrucaoLine = defineInstrucao(line).replace("\n","") #Define a instrução. Ex: JSR @14
            
            instrucaoLine = trataMnemonico(instrucaoLine) #Trata o mnemonico. Ex(JSR @14): x"9" @14
            print(instrucaoLine, end = '') #Print apenas para debug
                  
            if '@' in instrucaoLine: #Se encontrar o caractere arroba '@' 
                if noveBits == False:
                    instrucaoLine = converteArroba(instrucaoLine) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                else:
                    instrucaoLine = converteArroba9bits(instrucaoLine) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                    
            elif '$' in instrucaoLine: #Se encontrar o caractere cifrao '$'
                if noveBits == False:
                    instrucaoLine = converteCifrao(instrucaoLine) #converte o número após o caractere Ex(LDI $5): x"4" x"05"
                else:
                    instrucaoLine = converteCifrao9bits(instrucaoLine) #converte o número após o caractere Ex(LDI $5): x"4" x"05"
                
            else: #Senão, se a instrução nao possuir nenhum imediato, ou seja, nao conter '@' ou '$'
                instrucaoLine = instrucaoLine.replace("\n", "") #Remove a quebra de linha
                if noveBits == False:
                    instrucaoLine = instrucaoLine + '00' #Acrescenta o valor x"00". Ex(RET): x"A" x"00"
                else:
                    instrucaoLine = instrucaoLine + "\" & " + "\'0\' & " + "x\"00" #Acrescenta o valor x"00". Ex(RET): x"A" x"00"
                
            
            line = 'tmp(' + str(cont) + ') := x"' + instrucaoLine + '";\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN
                                                                                                       #Entrada => 1. JSR @14 #comentario1
                                                                                                       #Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1
                                        
            cont+=1 #Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            f.write(line) #Escreve no arquivo BIN.txt
            
            #print(line,end = '') #Print apenas para debug
            

