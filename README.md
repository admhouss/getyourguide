![GetYourGuide logo](http://www.creative-city-berlin.de/uploads/institutions/getyourguide_deutschland_gmbh/avatar/20120202120023.png)

[![Gem Version](https://badge.fury.io/rb/getyourguide.svg)](http://badge.fury.io/rb/getyourguide) [![Build Status](https://travis-ci.org/Libertrip/getyourguide.svg)](https://travis-ci.org/Libertrip/getyourguide) [![Code Climate](https://codeclimate.com/github/Libertrip/getyourguide/badges/gpa.svg)](https://codeclimate.com/github/Libertrip/getyourguide) [![Coverage Status](https://coveralls.io/repos/Libertrip/getyourguide/badge.svg?branch=master)](https://coveralls.io/r/Libertrip/getyourguide?branch=master)

Read the [gem's wiki](https://github.com/Libertrip/getyourguide/wiki) for more features!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'getyourguide'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install getyourguide

## Usage

### I. The easy way

```ruby
require 'getyourguide'

# required
partner_id        = 'XXXXXXXXXX'
options           = {
  :q => 'product_list',
  :where => 'Rome'
}

# optional (default is set to EN)
language          = 'fr'

api             = GetYourGuide::ApiClient.new(partner_id, language)
parsed_activities = api.call_and_parse(options)
```

## Run tests

`bundle exec rspec`

## Contributing

1. Fork it ( [https://github.com/Libertrip/getyourguide/fork](https://github.com/Libertrip/getyourguide/fork) )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
