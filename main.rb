require "webrick/httpproxy"
require 'pp'
require 'gdbm'

handler = lambda do |req, res|
  GDBM.open("req.db") do |reqdb|
    GDBM.open("res.db") do |resdb|
      GDBM.open("tim.db") do |timdb|
        
        pp req
        pp res


        
      end
    end
  end
end

proxy = WEBrick::HTTPProxyServer.new Port: 8000, ProxyContentHandler: handler

proxy.start
