# The Fed Spending Ruby Gem
A thin wrapper for the FedSpending API sponsored by Code for America.

Please see [FedSpending.org](http://www.fedspending.org/apidoc.php) for a full list of options

## Usage
    require 'fed_spending'
    FedSpending.rcv({:detail => -1, :recipient_state => 'IA'})
    # Returns a hash of the summary of modified recovery data on Federal contracts for the state of Iowa

    FedSpending.faads({:detail => -1, :recipient_name => 'Smith', :fiscal_year => 2006})
    # Returns a hash of FAADS Contracts from 2006 with the recipient name of Smith

    FedSpending.fpds({:detail => -1, :state => 'AL'})
    # Returns a hash of the modified FPDS data on Federal contracts from the state of Alabama

## Contributing
In the spirit of [free software][free-sw], **everyone** is encouraged to help improve
this project.

[free-sw]: http://www.fsf.org/licensing/essays/free-sw.html

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up
  inconsistent whitespace)
* by refactoring code
* by fixing [issues][]
* by reviewing patches
* [financially][]

[issues]: https://github.com/codeforamerica/fed_spending_ruby/issues
[financially]: https://secure.codeforamerica.org/page/contribute

## Submitting an Issue
We use the [GitHub issue tracker][issues] to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. When submitting a bug report, please include a [Gist][]
that includes a stack trace and any details that may be necessary to reproduce
the bug, including your gem version, Ruby version, and operating system.
Ideally, a bug report should include a pull request with failing specs.

[gist]: https://gist.github.com/

## Submitting a Pull Request
1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Add specs for your unimplemented feature or bug fix.
4. Run `bundle exec rake spec`. If your specs pass, return to step 3.
5. Implement your feature or bug fix.
6. Run `bundle exec rake spec`. If your specs fail, return to step 5.
7. Run `open coverage/index.html`. If your changes are not completely covered
   by your tests, return to step 3.
8. Add documentation for your feature or bug fix.
9. Run `bundle exec rake yard`. If your changes are not 100% documented, go
   back to step 8.
10. Add, commit, and push your changes.
11. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/

## Copyright
Copyright (c) 2011 Code for America. See [LICENSE][] for details.

[license]: https://github.com/codeforamerica/fed_spending_ruby/blob/master/LICENSE.md

[![Code for America Tracker](http://stats.codeforamerica.org/codeforamerica/fed_spending_ruby.png)](http://stats.codeforamerica.org/projects/fed_spending_ruby)
