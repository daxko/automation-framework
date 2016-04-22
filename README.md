# Automation Engineer Homework:

1. Explore the EZ Contact Manager site - http://bit.ly/QAHomework and find and document defects found. Write 2 automated tests that will pass once the defects are fixed using the TDD ‘fail first’ mindset. Come prepared to show off your code, and explain the why behind your approach.

1. Write 3 automated passing tests that check core functionality of the product. Come prepared to show off your code. Be ready to answer the question “What next two tests would be most valuable to be add?”

1. We work in an agile environment and most of our teams use scrum. We use User Stories as artifacts when developing new features. Identify three features that you would like be added to the EZ Contact Manager. Then create a user story for each feature. Be sure to include helpful acceptance criteria.

1. Push your code to either github or bitbucket and provide a link so we can view the code. Please send this to bmayhew@daxko.com prior to your presentation.

1. Extra Credit: Make the framework better! If you use the below framework, show off an area where you made the framework easier to use, more DRY, etc. If you are using your own framework show off things that you have built to make the framework easier to use, more DRY, etc. Be ready to give more examples of how you could make the framework better with more time.

You’ll have 30 minutes to discuss your homework with a team of potential peers. We like to ask questions, but you’re in charge for these 30 minutes, so present the information however you’re most comfortable (handouts, presentation, demo, etc). We’ll have a white board and projector available to you. Be sure to emphasize “why” you chose your approach. How you think is more important than “getting it right”.  


We at Daxko are currently using a framework written in Ruby that makes use of the following gems: 
* Watir-Webdriver - https://watir.com/ 
* Page-Object - https://github.com/cheezy/page-object
* Rspec - http://rspec.info/

For the homework, you are free to using whichever automation framework you like. We care a lot more about how your brain will approach the problem, than the tool you use to implement your solution. If you enjoy using the same tools that we do, then you can use this one!

## Regression Framework Suite

### Quick Start
* Get ruby setup.  
	* Windows: http://railsinstaller.org/en
	* OSX: http://rvm.io/rvm/install
* `gem install bundler` if bundler is not already installed
* `bundle install` to install required gems.  (You need to run this whenever pulling down this repo with new changes)
* `rspec` to run the test and verify it's working

### Use Chrome instead of FireFox
* If you want to use chrome for watir testing (recommended because it's faster), you need to download the chromedriver and put it in your PATH.
	* [Download ChromeDriver](http://chromedriver.storage.googleapis.com/index.html) (choose the latest version)
	* Extract it to some directory, e.g., c:\utils\chromedriver
	* Now go put c:\utils\chromedriver in the PATH (start : edit environment variables for your account : edit the 'Path' variable and append that directory to it)

### Frameworks

##### Page-Object

We're using the [page-object](https://github.com/cheezy/page-object) gem to wrap around watir-webdriver.  You can always drop down and use the watir browser object, but page-object provides some nice abstractions.

* [Elements](https://github.com/cheezy/page-object/wiki/Elements)
* [Simple DSL](https://github.com/cheezy/page-object/wiki/Simple-DSL)
* [Ajax Calls](https://github.com/cheezy/page-object/wiki/Ajax-Calls)

##### faker
The [faker](https://github.com/stympy/faker) can be used to generate random fake data within tests.

##### RSpec
* [RSpec Expecations syntax](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers)

### Writing Tests

##### Structure
* **lib/pages** contains objects that represent a webpage in the application.  Example: home_page.rb maps to the home page in EZ Contactor.
* **spec/** contains the automated checks

##### Conventions
1. A given lib/pages/whatever_page.rb file should map to a single web page.
1. Test in watir the absolute minimum that's required since these tests are slow and more brittle than hitting the database directly.
 
##### Things to consider when writing tests
1. We've run into several scenarios where workflows are very similar or an abstraction could be made. We decided simplicity, readability, and accessibility are more valuable than conciseness in many cases. If you have a series of tests with a bunch of if conditions trying to determine what state the tests need to run, it's probably better to duplicate that test for each mode. 
