require "active_support"
require "active_support/core_ext"

module SaltParser
  class Base
    def initialize(attrs)
      attrs.each do |key, value|
        send("#{key}=", value)
      end
    end
  end
end

require_relative "accounts"
require "ofx/dependencies"
require "qif/dependencies"