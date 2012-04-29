am_credit_card
==============

[ActiveMerchant::Billing::CreditCard][1], without [ActiveMerchant][2].

[![https://secure.travis-ci.org/pda/am_credit_card.png](https://secure.travis-ci.org/pda/am_credit_card.png)](http://travis-ci.org/#!/pda/am_credit_card)


Why?
----

ActiveMerchant has [nice credit card validations][3], but also lots of [dependencies][4] and other code.
That's fine for those using the rest of ActiveMerchant, but if you're just after it's credit card model/validations, this is for you.


Usage
-----

```ruby
# Gemfile
gem "am_credit_card"
```

```ruby
# Instantiation
card = ActiveMerchant::Billing::CreditCard.new(
  :first_name         => "Bob",
  :last_name          => "Bobsen",
  :number             => "4242424242424242",
  :month              => "8",
  :year               => "2012",
  :verification_value => "123"
)

# Validation
card.valid?
card.errors
```


License
-------

ActiveMerchant is Copyright © 2005-2010 Tobias Luetke.
He has released it open-source under the [MIT license][5]


[1]: https://github.com/Shopify/active_merchant/blob/master/lib/active_merchant/billing/credit_card.rb
[2]: http://activemerchant.rubyforge.org/
[3]: https://github.com/Shopify/active_merchant/blob/master/lib/active_merchant/billing/credit_card_methods.rb
[4]: https://github.com/Shopify/active_merchant/blob/master/activemerchant.gemspec#L21-32
[5]: https://github.com/Shopify/active_merchant/blob/master/MIT-LICENSE
