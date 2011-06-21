# Fedspending.gov Ruby Gem
A thin wrapper for the fedspending.gov API

Usage
-----
	require 'fed_spending'
	FedSpending.rcv({:detail => -1, :recipient_state => 'IA'})
	# Returns a hash of the summary of modified recovery data on Federal contracts for the state of Iowa
	
	FedSpending.faads({:detail => -1, :recipient_name => 'Smith', :fiscal_year => 2006})
	# Returns a hash of FAADS Contracts from 2006 with the recipient name of Smith
	
	FedSpending.fdps({:detail => -1, :state => 'AL'})
	# Returns a hash of the modified FPDS data on Federal contracts from the state of Alabama
	
See [Fed Spending](http://www.fedspending.org/apidoc.php) for a full list of options

[![Code for America Tracker](http://stats.codeforamerica.org/codeforamerica/fed_spending.png)](http://stats.codeforamerica.org/projects/fed_spending)