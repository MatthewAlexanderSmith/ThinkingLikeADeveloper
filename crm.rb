#Is the the same as Class CRM < Contact ?
#What's the difference?
require_relative 'contact.rb'

class CRM
  def print_main_menu
    puts "1. Add a contact"
    puts "2. Modify a contact"
    puts "3. Display all contacts"
    puts "4. Display contact"
    puts "5. Display contact attribute"
    puts "6. Delete a contact"
    puts "7. Exit"
  end

  def main_menu

    choice = 0
    until choice == 7
      print_main_menu
      choice = gets.chomp.to_i
      choose_option(choice)
    end

    # while true
    #   print_main_menu
    #   choice = gets.chomp.to_i
    #   return if choice == 7
    # end
  end

  def choose_option(choice)
    case choice
    when 1 then add_contact
    when 2 then modify_contact
    when 3 then display_all_contacts
    when 4 then display_contact
    when 5 then display_contact_attribute
    when 6 then delete_contact
    when 7
      puts "Thanks for playing"
      exit
    else
      puts "Can't do that"
    end
  end

  def add_contact
    puts "First Name"
    first_name = gets.chomp.to_s

    puts "Last Name"
    last_name = gets.chomp.to_s

    puts "email"
    email = gets.chomp.to_s

    puts "Note"
    note = gets.chomp.to_s

    new_contact = Contact.create(first_name, last_name, email: email, note: note)
  end

  def display_all_contacts
    #Calls the all method on the Contact class
    #The Contact class is available because we put require_relative 'contact.rb'
    #At the top of this file
    #This returns an array of objects
    #We then iterate over the array
    #Printing out all entries.
    Contact.all.each do |contact|
      puts "#{contact.id} #{contact.full_name} #{contact.email} #{contact.note}"
  end
end

end

#What does this code do exactly?
crm = CRM.new
crm.main_menu
