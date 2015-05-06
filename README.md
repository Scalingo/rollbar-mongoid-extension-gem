# Rollbar Mongoid Extension gem

Simple gem which take [ActiveRecord extension](https://github.com/Scalingo/rollbar-gem/commits/master/lib/rollbar/active_record_extension.rb)
of the rollbar-gem and include it in `Mongoid::Document`


## Installation

In your Gemfile:

```
gem 'rollbar-mongoid-extension'
```

## Usage

```ruby
after_validation :report_validation_errors_to_rollbar
```
