#!/usr/bin/env python
print"      Programa para calculo del impuesto sobre la renta"
print "                    persona natural"
print ""

impuesto_15 = 0
impuesto_20 = 0
impuesto_25 = 0

tasa_exenta = 0
tasa15 = 0.15
tasa20 = 0.20
tasa25 = 0.25




while True:
    print""
    excedente_13vo = 0
    excedente_14vo = 0
    salarios = []
    salario_anual = 0
    DecimoTercerMes = 0
    DecimoCuartoMes = 0
    
    enero = float(raw_input("Enero: "))
    febrero = float(raw_input("Febrero: "))
    marzo = float(raw_input("Marzo: "))
    abril = float(raw_input("Abril: "))
    mayo = float(raw_input("Mayo: "))
    junio = float(raw_input("junio: "))
    julio = float(raw_input("Julio: "))
    agosto = float(raw_input("Agosto: "))
    septiembre = float(raw_input("Septiembre: "))
    octubre = float(raw_input("Octubre: "))
    noviembre = float(raw_input("Noviembre: "))
    diciembre = float(raw_input("Diciembre: "))
    treceavo = float(raw_input("13er mes: "))
    catorceavo = float(raw_input("14to mes: "))
    

    salarios.append(enero)
    salarios.append(febrero)
    salarios.append(marzo)
    salarios.append(abril)
    salarios.append(mayo)
    salarios.append(junio)
    salarios.append(julio)
    salarios.append(agosto)
    salarios.append(septiembre)
    salarios.append(octubre)
    salarios.append(noviembre)
    salarios.append(diciembre)
    DecimoTercerMes = treceavo
    DecimoCuartoMes = catorceavo

    salario_anual = sum(salarios)
    
    ingreso_gravable = salario_anual - 40000 #L.40,000.00 como gastos medicos sin comprobantes segun art.22 de la ley I.S.R.
    ingreso_imponible = ingreso_gravable - 110000
    m = ingreso_imponible
    salario_minimo = 6530.69

    
    impuesto_15 = 0
    impuesto_20 = 0
    impuesto_25 = 0
    impuesto_total = 0

    if salario_anual == 0:
        break
    if ingreso_gravable <= 110000 :
        print ""
        print "  Ingreso por salario anual....... L.%10.2f" % (salario_anual)
        print "                                     ----------"
        print "  Total ingreso devengado ........   %10.2f" % (salario_anual + excedente_13vo + excedente_14vo)
        print "  (-) Gastos medicos     .........   %10.2f" % (40000)
        print "                                    -----------"
        print "  Total Ingreso neto gravable ...  L.%10.2f" % (salario_anual + excedente_13vo + excedente_14vo - 40000)
        print ""
        print "              Renta Neta Gravable        Tasa           Impuesto"
        print "              -------------------      --------     ------------"
        print "  De  L.      0.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((ingreso_gravable),(tasa_exenta),(0))
        
    if DecimoTercerMes > (salario_minimo * 10):
        excedente_13vo = DecimoTercerMes - (salario_minimo * 10)
                       
    if DecimoCuartoMes > (salario_minimo * 10):
        excedente_14vo = DecimoCuartoMes - (salario_minimo * 10)

    if ingreso_gravable > 110000 :
        print ""
        if m <= 90000 :
            print "  Ingreso por salario anual....... L.%10.2f" % (salario_anual)
            print "                                     ----------"
            print "  Total ingreso devengado ........   %10.2f" % (salario_anual + excedente_13vo + excedente_14vo)
            print "  (-) Gastos medicos     .........   %10.2f" % (40000)
            print "                                    -----------"
            print "  Total Ingreso neto gravable ...  L.%10.2f" % (salario_anual + excedente_13vo + excedente_14vo - 40000)
            
            impuesto_15 = (ingreso_gravable - 110000) * tasa15
            
            print ""
            print "              Renta Neta Gravable        Tasa           Impuesto"
            print "              -------------------      --------     ------------"
            print "  De  L.      0.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((110000),(tasa_exenta),(0))
            print "  De    110,000.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((ingreso_gravable),(tasa15*100),(impuesto_15))
            
        elif m >90000 and m <= 390000 :
            print "  Ingreso por salario anual....... L.%10.2f" % (salario_anual)
            if excedente_13vo > 0 or excedente_14vo > 0:
                print " (+) excedente 13er. mes.............%10.2f" % (excedente_13vo)
                print " (+) excedente 14to. mes.............%10.2f" % (excedente_14vo)
                
            print "                                     ----------"
            print "  Total ingreso devengado ........   %10.2f" % (salario_anual + excedente_13vo + excedente_14vo)
            print "  (-) Gastos medicos     .........   %10.2f" % (40000)
            print "                                    -----------"
            print "  Total Ingreso neto gravable ...  L.%10.2f" % (salario_anual + excedente_13vo + excedente_14vo - 40000)
            
            impuesto_15 = (90000) * tasa15
            impuesto_20 = (ingreso_gravable + excedente_13vo + excedente_14vo - 200000) * tasa20
            
            print ""
            print "              Renta Neta Gravable        Tasa           Impuesto"
            print "              -------------------      --------     ------------"
            print "  De  L.      0.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((110000),(tasa_exenta),(0))
            print "  De    110,000.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((200000),(tasa15*100),(impuesto_15))
            print "  De    200,000.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((ingreso_gravable + excedente_13vo + excedente_14vo),(tasa20*100),(impuesto_20))
            
        elif m > 390000 :
            print "  Ingreso por salario anual....... L.%10.2f" % (salario_anual)
            if excedente_13vo > 0 or excedente_14vo > 0:
                print " (+) excedente 13er. mes.............%10.2f" % (excedente_13vo)
                print " (+) excedente 14to. mes.............%10.2f" % (excedente_14vo)
                
            print "                                     ----------"
            print "  Total ingreso devengado ........   %10.2f" % (salario_anual + excedente_13vo + excedente_14vo)
            print "  (-) Gastos medicos     .........   %10.2f" % (40000)
            print "                                    -----------"
            print "  Total Ingreso neto gravable ...  L.%10.2f" % (salario_anual + excedente_13vo + excedente_14vo - 40000)
            
            impuesto_15 = (90000) * tasa15
            impuesto_20 = (300000) * tasa20
            impuesto_25 = (ingreso_gravable + excedente_13vo + excedente_14vo - 500000) * tasa25
            
            print ""
            print "              Renta Neta Gravable        Tasa           Impuesto"
            print "              -------------------      --------     ------------"
            print "  De  L.      0.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((110000),(tasa_exenta),(0))
            print "  De    110,000.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((200000),(tasa15*100),(impuesto_15))
            print "  De    200,000.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((500000),(tasa20*100),(impuesto_20))
            print "  De    500,000.00  a {0:10.2f} .......{1:3.0f} %  .... L.{2:10.2f}" .format((ingreso_gravable + excedente_13vo + excedente_14vo),(tasa25*100),(impuesto_25))

        

        impuesto_total = impuesto_15 + impuesto_20 + impuesto_25 
            
        
        print "                                                    ------------"
        print "Total impuesto sobre la renta ....................  L.%10.2f" % (impuesto_total)
        print ""
        print "  Deduccion     anual I.S.R.   L.%10.2f" % (impuesto_total)
        print "  Deduccion   mensual I.S.R.     %10.2f" % (impuesto_total/12.0)
        print "  Deduccion quincenal I.S.R.     %10.2f" % (impuesto_total/24.0)
        print "  Deduccion   semanal I.S.R.     %10.2f" % (impuesto_total/52.0)
            
    
    
    
    

print""
raw_input("Presione la tecla Return o Enter para salir")
