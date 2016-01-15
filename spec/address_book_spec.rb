require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do
    it "should respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "should initialize entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_a(Array)
    end

    it "should initialize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end
  end

  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Hock Tan', '510.111.2222', 'myemail@gmail.com')

      expect(book.entries.size).to eq(1)
    end

    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Hock Tan', '510.111.2222', 'myemail@gmail.com')
      new_entry = book.entries[0]

      expect(new_entry.name).to eq('Hock Tan')
      expect(new_entry.phone_number).to eq('510.111.2222')
      expect(new_entry.email).to eq('myemail@gmail.com')
    end
  end
end
