require "Stef/Rousset_palindrome/version"

# module Stef
#   module RoussetPalindrome
#     class Error < StandardError; end
#     # Your code goes here...
#   end
# end
  class String

    # Returns true for a palindrome, false otherwise.
    def palindrome?
      processed_content == processed_content.reverse
    end

    # def letters
    #   self.gsub(/[\W\s]/, '')
    # end

    private

      # Returns content for palindrome testing.
      def processed_content
        self.gsub(/[\W\s]/, '').downcase
      end
  end
