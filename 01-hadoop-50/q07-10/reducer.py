import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
#!/usr/bin/env python

import sys

##
## Esta funcion reduce los elementos que
## tienen la misma clave
##

if __name__ == '__main__':

    curkey = None
    temp = 0
    ultiLetra = None
    valor = 0
    ultVal = None
    vector = []
    
    ##
    ## cada linea de texto recibida es una
    ## entrada clave \tabulador valor
    ##
    for line in sys.stdin:

        text, letra, fecha, valor = line.split('\t')
        valor = int(valor)
                        
                   
    ##print("resp...", ultiProp, ultVal)
        sys.stdout.write("{}\t{}\t{}\n".format(letra,fecha,valor))