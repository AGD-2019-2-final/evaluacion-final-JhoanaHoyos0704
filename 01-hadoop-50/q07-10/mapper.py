import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
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
        letra = ""
        valor = 0
        valor2 = 0
        v = ""
                
        line = line.strip()
        splits = line.split()
        letra = splits[0]
        fecha = splits[1]
        valor = splits[2]
        valor2 = (float(valor))/10
        v = str(valor2)
        
        sys.stdout.write("{}\t{}\t{}\t{}\n".format(letra+v,letra,fecha,valor))