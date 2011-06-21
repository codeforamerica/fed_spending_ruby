require 'fed_spending/client'
require 'fed_spending/client/connection'
require 'fed_spending/client/request'
require 'fed_spending/client/api'


module FedSpending
  class Client
    include FedSpending::Client::Connection
    include FedSpending::Client::Request
    include FedSpending::Client::Api

  end
end