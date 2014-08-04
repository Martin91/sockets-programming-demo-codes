require 'socket'
one_kb = 1024 # 字节数

Socket.tcp_server_loop(4481) do |connection|
  while data = connection.read(one_kb) do
    puts data
  end

  connection.read
end
