import socket

def port_scanner(ip, ports):
    print(f"Verificando  portas no  IP: {ip}")
    
    for port in ports:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.settimeout(1)
            
            result = s.connect_ex((ip, port))
            
            if result == 0:
                print(f"Porta {port}: ABERTA")
            else: 
                print(f"Porta {port}: FECHADA")

ip = input ("Digite o IP ou hostname a ser escaneado: ")            

ports = range (1, 1025)

port_scanner(ip, ports)