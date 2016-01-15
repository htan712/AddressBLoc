require_relative '../models/entry'

RSpec.describe Entry do

   describe "attributes" do

     it "should respond to name" do
       entry = Entry.new('Hock Tan', '510.111.2222', 'myemail@gmailcom')

       expect(entry).to respond_to(:name)
     end

     it "should respond to phone number" do
       entry = Entry.new('Hock Tan', '510.111.2222', 'myemail@gmailcom')

       expect(entry).to respond_to(:phone_number)
     end

     it "should respond to email" do
       entry = Entry.new('Hock Tan', '510.111.2222', 'myemail@gmailcom')
       
       expect(entry).to respond_to(:email)
     end
   end

   describe "#to_s" do
     it "prints an entry as a string" do
       entry = Entry.new('Hock Tan', '510.111.2222', 'myemail@gmail.com')
       expected_string = "Name: Hock Tan\nPhone Number: 510.111.2222\nEmail: myemail@gmail.com"
       expect(entry.to_s).to eq(expected_string)
     end

   end
 end
