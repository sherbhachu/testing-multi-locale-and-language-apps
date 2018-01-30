# testing-multi-locale-and-language-apps
An example project on how to tackle automated testing against apps that may be in more than just a single language/region/locale

I have included a sudo 'page object' which is framework agnostic, i.e.
it does not care if you're using Appium, Calabash, Capybara, etc.

Initial commit will simply cover the basics around LANGUAGE.
LOCALE to follow.

## Want more?

Drop me an email, sherbhachu@googlemail.com for any comments, suggestions, etc.

## Instructions/Config required prior to use...

I like to use RVM to get my house in order...

1. cd into testing-multi-locale-and-language-apps/
2. rvm use ruby-2.3.0
3. rvm gemset testing-multi-locale-and-language-apps
4. rvm gemset use testing-multi-locale-and-language-apps
5. bundle install

## To run the spec, for 'fr' as the language...
```
SET_LANG='fr' rspec spec/language_spec.rb
```
## Or, using the default language of 'en'...
```
rspec spec/language_spec.rb
```