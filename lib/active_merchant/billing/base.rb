module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Base
      # Set ActiveMerchant gateways in test mode.
      #
      #   ActiveMerchant::Billing::Base.gateway_mode = :test
      mattr_accessor :gateway_mode
      
      # Set both the mode of both the gateways and integrations
      # at once
      mattr_reader :mode

      def self.mode=(mode)
        @@mode = mode
        self.gateway_mode = mode
      end

      self.mode = :production
                                                                
      # A check to see if we're in test mode
      def self.test?
        self.gateway_mode == :test
      end
    end             
  end
end

