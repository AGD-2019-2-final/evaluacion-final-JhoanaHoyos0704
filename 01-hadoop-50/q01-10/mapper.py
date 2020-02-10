import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
#! /usr/bin/env python

##
## Esta es la funcion que mapea la entrada a parejas (clave, valor)
##
import sys
if __name__ == "__main__":

    ##
    ## itera sobre cada linea de codigo recibida
    ## a traves del flujo de entrada
    ##
    for line in sys.stdin:
        credito = ""
        mes = 0
        
        line = line.strip()
        splits = line.split(',')
        
        
        ##
        ## genera las tuplas palabra \tabulador 1
        ## ya que es un conteo de palabras
        ##
        ##for word in line.split():

            ##
            ## escribe al flujo estandar de salida
            ##
        sys.stdout.write("{}\t1\n".format(credito))
            ##print ("{}\t1\n".format(word) + '\t' + credito)