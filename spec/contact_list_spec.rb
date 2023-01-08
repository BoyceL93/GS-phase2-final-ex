require 'contact_list'

RSpec.describe ContactList do
    context "given a name and number" do
        it "adds them to a contact list" do
            contacts = ContactList.new
            result = contacts.add('Rich', '07123456789')
            expect(result).to eq [{'Rich' => '07123456789'}]
        end
    end

    context "given multiple contacts" do
        it "returns the full contact list" do
            contacts = ContactList.new
            contacts.add('Rich', '07123456789')
            contacts.add('Lauren', '07123456789')
            contacts.add('Mum', '07123456789')
            contacts.add('Dad', '07123456789')
            result = contacts.phone_book
            expect(result).to eq [{'Rich' => '07123456789'}, {'Lauren' => '07123456789'}, {'Mum' => '07123456789'}, {'Dad' => '07123456789'}]
        end
    end
end