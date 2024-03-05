import shutil as s
import os
import os.path as path

ruta=input("Introduce la ruta del fichero: ")
ruta=open(ruta,"r")
fichero=[]
directorio=[]
ruta=ruta.readlines()
for i in ruta:
    a=i.strip()
    if path.isdir(a):
        directorio.append(a)
    elif path.isfile(a):
        fichero.append(a)
def opa():
    fich = input("Introduce el nombre de un fichero: ")
    if fich in fichero:
        os.remove(fich)
        if os.path.exists(fich):
            print("El fichero no se ha eliminado")
        else:
            print("Fichero elimniado correctamente")
    else:
        print("El fichero no existe")
    menu()
def opb():
    fich = input("Introduce el nombre de un directorio: ")
    if fich in directorio:
        print(os.listdir(fich))
    menu()
def opc():
    fich = input("Introduce el nombre de un fichero: ")
    des=input("Introduce un destino: ")
    if fich in fichero:
        if os.path.exists(des):
            s.copy(fich, des)
        else:
            print("El destino no existe")
    else:
        print("El fichero no existe")
    menu()
def opd(f,d):
    print("MENU")
    print("1- MOSTRAR LISTA DE FICHEROS")
    print("2- MOSTRAR LISTA DE DIRECTORIOS")
    op=input("SELECCIONA UNA OPCION: ")
    if op == "1":
        print(fichero)
    elif op == "2":
        print(directorio)
def menu():
    print("MENU")
    print("A- Pedir nombre de fichero y eliminarlo.")
    print("B- Pedir nombre de directorio y mostrar su información.")
    print("C- Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.")
    print("D- Mostrar lista elegida por el usuario")
    print("E- Salir")
    op = input("Introduce una opcion: ")
    match op:
        case "a":
            opa()
        case "b":
            opb()
        case "c":
            opc()
        case "d":
            opd(fichero,directorio)
menu()