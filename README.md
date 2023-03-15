# Shepherd-Rails
A modern wrapper for using [Shepherd.js](https://shepherdjs.dev/) with Ruby on Rails.

# Installation

### 1. Add this line to your application's Gemfile:

```ruby
gem "shepherd-rails"
```

### 2. Then execute:
```bash
$ bundle
```

### 1.1. Or install it yourself as:
```bash
$ gem install shepherd-rails
```

### 3. Generate an initializer with:

```bash
bundle exec rails generate shepherd_rails
```

### 4. Then you need to install the JavaScript package:
```bash
$ yarn add shepherd-rails
```

### 5. Import the stimulus controller to your controllers entry-point (eg: _app/javascript/controllers/index.js_):
```js
import ShepherdRails from "shepherd-rails"
application.register("shepherd-rails", ShepherdRails)
```

# Usage

ShepherdRails is a fairly opinionated way to use ShepherdJs. If you have suggestions/requests for alternative flows, feel free open an issue.

# Dependencies
- [Stimulus](https://stimulus.hotwired.dev/)
- [ShepherdJs](https://shepherdjs.dev/)

# 🙏🏻 Contributing

If you have an issue you'd like to submit, please do so using the issue tracker in GitHub. For us to help you in the best way possible, please be as detailed as you can.

# 📝 License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
