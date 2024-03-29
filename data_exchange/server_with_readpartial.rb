require 'socket'
one_hundred_kb = 1024 * 100

Socket.tcp_server_loop(4481) do |connection|
  begin
    while data = connection.readpartial(one_hundred_kb) do
      puts data
    end
  rescue EOFError    # readpartial will raise EOFError when it received an EOF event
  end

  connection.read
end
