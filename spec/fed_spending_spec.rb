# -*- encoding: utf-8 -*-
require 'helper'

describe FedSpending do
  describe ".client" do
    it "should be a FedSpending::Client" do
      FedSpending.client.should be_a FedSpending::Client
    end
  end
end