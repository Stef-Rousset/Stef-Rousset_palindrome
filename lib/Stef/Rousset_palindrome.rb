require "Stef/Rousset_palindrome/version"

module Stef
  module RoussetPalindrome
    class Error < StandardError; end

    # Returns true for a palindrome, false otherwise.
    def palindrome?
      return false if processed_content.empty?
      processed_content == processed_content.reverse
    end

    # def letters
    #   self.gsub(/[\W\s]/, '')
    # end

    private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.gsub(/[\W\s]/, '').downcase
    end
  end
end

class String
  include Stef
  include RoussetPalindrome
end

class Integer
  include Stef
  include RoussetPalindrome
end
