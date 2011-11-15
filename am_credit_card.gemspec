# -*- encoding: utf-8 -*-
require File.expand_path('../lib/am_credit_card_version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Paul Annesley"]
  gem.email         = ["paul@annesley.cc"]
  gem.description   = %q{ActiveMerchant::Billing::CreditCard, without ActiveMerchant}
  gem.summary       = %q{ActiveMerchant has nice credit card validations, but also lots of dependencies and other code. That's fine for those using the rest of ActiveMerchant, but if you're just after it's credit card model/validations, this is for you.
}
  gem.homepage      = "https://github.com/pda/am_credit_card"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "am_credit_card"
  gem.require_paths = ["lib"]
  gem.version       = AmCreditCard::VERSION

  gem.add_dependency('activesupport', '>= 2.3.11')
  gem.add_dependency('i18n')

  gem.add_development_dependency('rake')
end
