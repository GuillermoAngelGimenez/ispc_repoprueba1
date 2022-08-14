Historial2=(23500, 5960, 2300, 10200, 8900)
pagoTotal=sum(Historial2)
print("El pago total de los servicios de Frida son de: ", pagoTotal)

def pagos(tupla):
    x=0
    for i in tupla:
        if i>5000:
            x+=1
    print("Los pagos mayores a $5000 son: ", x)
    
pagos(Historial2)