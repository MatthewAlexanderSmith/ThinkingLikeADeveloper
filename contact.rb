class Contact
attr_accessor :first_name, :last_name, :email, :note
attr_reader :id
@@contacts = []
@@id = 1


  def initialize(id, first_name, last_name, options = {})
    @id = id
    @first_name = first_name
    @last_name = last_name
    @email = options[:email]
    @note = options[:note]
  end


  def self.create(first_name, last_name, options ={})
    #1. Create new contact
    #2. ASsign the new contact a unique id
    new_contact = self.new(@@id, first_name, last_name, options) # => Contact.new...

    #3. Add the enw contact to the list
    @@contacts << new_contact
    #4. Increment the id
    @@id += 1

    #Return the just-created contact
    new_contact
  end

  def self.all
    @@contacts
  end
  
  def self.find(id)
    @@contacts.find { |contact| contact.id == id}
  end

end




def full_name
  "#{first_name} #{last_name}"
end


#Getter and Setter Methods long for
#The attr_accessor method creates these automatically for each variable
# def first_name
#   @first_name
# end
#
# def first_name=(new_first_name)
#   @first_name = new_first_name
# end


#This line of code is here to illustrate how
#To create a new contact in the terminal.
#new_contact = Contact.new("Mina", "Mikhail", "mina@bitmakerlabs.com", "Awesome")
