require 'socket'

Socket.tcp_server_loop(4481) do |connection|
  connection.write "Welcome, I am responsible for servicing you!"

  connection.close
end
