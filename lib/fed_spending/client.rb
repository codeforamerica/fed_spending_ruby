require 'fed_spending/client'
require 'fed_spending/client/connection'
require 'fed_spending/client/request'


module FedSpending
  class Client
    include FedSpending::Client::Connection
    include FedSpending::Client::Request

  end
end