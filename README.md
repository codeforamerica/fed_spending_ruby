# The Fed Spending Ruby Gem

A thin wrapper for the FedSpending API sponsored by Code for America.

Please see [FedSpending.org](http://www.fedspending.org/apidoc.php) for a full list of options


Usage
-----
```ruby

	require 'fed_spending'
	FedSpending.rcv({:detail => -1, :recipient_state => 'IA'})
	# Returns a hash of the summary of modified recovery data on Federal contracts for the state of Iowa
	
	FedSpending.faads({:detail => -1, :recipient_name => 'Smith', :fiscal_year => 2006})
	# Returns a hash of FAADS Contracts from 2006 with the recipient name of Smith
	
	FedSpending.fpds({:detail => -1, :state => 'AL'})
	# Returns a hash of the modified FPDS data on Federal contracts from the state of Alabama
	
```


Contributing
------------
In the spirit of [free
software](http://www.fsf.org/licensing/essays/free-sw.html),
**everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments,
  clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues](https://github.com/codeforamerica/fed_spending_ruby/issues)
* by reviewing patches

Submitting an Issue
-------------------
We use the [GitHub issue
tracker](https://github.com/codeforamerica/fed_spending_ruby/issues) to track bugs and
features. Before submitting a bug report or feature request, check to
make sure it hasn't already
been submitted. You can indicate support for an existing issuse by
voting it up. When submitting a
bug report, please include a [Gist](https://gist.github.com/) that
includes a stack trace and any
details that may be necessary to reproduce the bug, including your gem
version, Ruby version, and
operating system. Ideally, a bug report should include a pull request
with failing specs.

Submitting a Pull Request
-------------------------
1. Fork the project.
2. Create a topic branch.
3. Implement your feature or bug fix.
4. Add documentation for your feature or bug fix.
5. Run <tt>bundle exec rake doc:yard</tt>. If your changes are not 100%
   documented, go back to step 4.
6. Add specs for your feature or bug fix.
7. Run <tt>bundle exec rake spec</tt>. If your changes are not 100%
   covered, go back to step 6.
8. Commit and push your changes.
9. Submit a pull request. Please do not include changes to the gemspec,
   version, or history file. (If you want to create your own version for
some reason, please do so in a separate commit.)

Copyright
---------
Copyright (c) 2011 Code for America
See
[LICENSE](https://github.com/codeforamerica/fed_spending_ruby/blob/master/LICENSE.md)
for details.

[![Code for America
Tracker](http://stats.codeforamerica.org/codeforamerica/fed_spending_ruby.png)](http://stats.codeforamerica.org/projects/fed_spending_ruby)
