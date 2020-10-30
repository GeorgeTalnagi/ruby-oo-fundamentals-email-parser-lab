# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
 class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails 
    end 

    def parse
        splitEmails = emails.split(" ").collect do |email| 
            email.split(",")
        end 
        splitEmails.uniq.flatten
    end 
end 






#parses CSV emails (EmailAddressParser.new("avi@test.com, arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
#parses space delimited emails (EmailAddressParser.new("avi@test.com arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
#parses both CSV and space delimited emails (EmailAddressParser.new(emails).parse).to eq(["avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"]) 
#removes duplicate emails .uniq 