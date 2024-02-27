# Debéis de crear un script en Python que tenga un menú con 4 opciones. El programa acaba cuando se introduce la opción 4. Se debe comprobar que el usuario que ejecuta el script es el root.
# ▪ Opción 1: Muestra información del SSOO e información de la CPU.
# ▪ Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.
# ▪ Opción 3: Pedir al usuario un directorio. Comprobar si existe y si es un directorio, en caso contrario, lo crea.
# ▪ Opción 4: Salir.
# Cesar Blas Holgado
# 26 de febrero 2024
import cpuinfo as soinfo
import os
def inf():
    print(os.uname().version)
    print(soinfo.get_cpu_info()["brand_raw"])
    print()
    input("pulsa cualquier tecla para continuar")
    menu()
def usr():
    en=False
    usr=input("Introduce un nombre de usuario: ")
    psw=open("/etc/passwd","r")
    for i in psw:
        if usr in i:
            en=True
    if en == True:
        print("+----------------------------+")
        print("   El ususario ya existe")
        print("+----------------------------+")
        print()
    else:
        print("+-------------------------------------+")
        print("   El ususario no existe, se creara")
        os.system("useradd -m "+ usr)
        print("El usuario se ah creado correctamente")
        print("+-------------------------------------+")
    input("pulsa cualquier tecla para continuar")
    menu()
def dir():
    dir=input("Introduce un directorio: ")
    if os.path.exists(dir):
        print("El directorio ya existe")
    else:
        print("El directorio no existe, se creara")
        os.makedirs(dir)

def menu():
    print("+-----------------------------+")
    print("|             MENU            |")
    print("+-----------------------------+")
    print("| 1- INFORMACION DEL SISTEMA  |")
    print("| 2- USUARIO                  |")
    print("| 3- DIRECTORIO               |")
    print("| 4- SALIR                    |")
    print("+-----------------------------+")
    op=int(input("Introcude una opcion: "))
    match op:
        case 1:
            inf()
        case 2:
            usr()
        case 3:
            dir()
        case 4:
            exit()
menu()