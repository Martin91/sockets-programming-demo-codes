require 'socket'

client = TCPSocket.new('localhost', 4481)

client.write 'Hello, my dear server!'
client.close
