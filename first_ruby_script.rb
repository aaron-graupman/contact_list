@contacts = []

def print_menu #Displays Main Menu Options
  puts '--Contacts List Menu--'
  puts '1) All Contacts'
  puts '2) Create New Contact'
  puts '3) Quit Application'
end

def all_contacts #Defines method of main menu option 1 (Display Contacts)
  puts
  puts @contacts
#  @contacts.each do |contact|
#    puts contact
#    puts 'Press any key to continue'
#    puts 'Press 1 to edit contact'
#    num = gets.to_i
#    case num
#    when 1
#      edit_contact
#    when 2
#      delete_contact
#    else
#      next_contact
#    end
#  end
end

def create_contact
contact = gets
@contacts << [contact.to_s]
puts 'New Contact Recorded'
puts
puts 'Current list of contacts:'
puts @contacts
puts
# puts "2) Create Another Contact\n"
# puts "\n#{@contacts}"
puts '---Returning to Main Menu---'
puts
end

while true
print_menu #Defines method "m_menu" in the context of the main menu
puts
 input_m_menu = gets.to_i #User's response to main menu options
 case input_m_menu
  when 1
    all_contacts
  when 2
    puts 'Enter new contact info (Ex. John Doe 123-4567)'
    create_contact
  when 3
    exit
  else
    puts "Invalid Selection"
  end
end

#Display existing contacts
#select option 1
#puts 'contact 1+, press enter to go to next contact'
#puts 'edit contact'
#puts 'delete contact'
#go to  next
#loop lines 9-12
#end
