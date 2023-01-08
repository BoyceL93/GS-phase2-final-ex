class ContactList
    def initialize
        @all_contacts = []
    end

    def add(name, number)
        contact = {}
        contact.store(name, number)
        @all_contacts << contact
    end

    def phone_book
        return @all_contacts
    end
end