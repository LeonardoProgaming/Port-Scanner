require 'socket'
def port_scanner(ip, ports)
    puts "Verificando portas no IP: #{ip}"

    ports.each do |port|
        begin
            socket = TCPSocket.new(ip, port)
            puts "Porta #{port}: ABERTA"

        rescue Errno: :ECONNREFUSED
            puts"Porta #{port}: FECHADA"

        rescue Errno: :ETIMEDOUT
            puts "Porta #{port}: SEM RESPOSTA"

        ensure
            socket.close is socket 

        end
    end
end

puts "Digite o  ip  ou Hostname  a ser escaneado:"
ip = gets.chomp

ports = (1..1024).to_a
port_scanner(ip, ports)