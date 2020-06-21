# Authentication with Devise and cancancan in Rails

This is the code for a tutorial on how to set up authentication (verifying who you are) and authorization (what you are permitted to do) using Ruby 2.7, Rails 6.0.3 and two popular Ruby gems: [Devise](https://github.com/heartcombo/devise) and [cancancan](https://github.com/CanCanCommunity/cancancan).

The tutorial can be found here: http://hibbard.eu/authentication-with-devise-and-cancancan-in-rails
​
## Requirements

* [Ruby](https://www.ruby-lang.org/en/)
* [Rails](https://rubyonrails.org/)
* [Node.js](http://nodejs.org/)
* [Yarn](https://yarnpkg.com/)

## Installation Steps

1. Clone repo: `git clone git@github.com:jameshibbard/authentication-with-devise-and-cancancan.git`
2. Change into directory: `cd authentication-with-devise-and-cancancan`
3. Install gems: `bundle install`
4. Install JavaScript packages: `yarn install`
5. Create database: `rake db:create`
6. Create tables: `rake db:migrate`
7. Seed database: `rake db:seed`
8. Start the server: `rails s`
9. Visit http://localhost:3000/ and log in with any of the users defined in the [seeds file](https://github.com/jameshibbard/authentication-with-devise-and-cancancan/blob/master/db/seeds.rb).

## License

Code archives and code examples are licensed under the MIT license.

Copyright © 2020 James Hibbard

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
