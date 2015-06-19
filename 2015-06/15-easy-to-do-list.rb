# http://www.reddit.com/r/dailyprogrammer/comments/39ws1x/20150615_challenge_218_easy_todo_list_part_1/

$items = []
help = "Todo available commands:
  add <item>       Add item to the to do list.
  remove <item>    Remove item from the to do list."

def prompt
  puts
  if $items.any?
    puts "To do:\n  #{$items.join "\n  "}"
  else
    puts 'No items to do.'
  end
  print "\nto do > "
end

puts "\nWelcome to To Do!
  Press <enter> for help.\n\n"

loop do
  prompt
  input = gets.chomp.split
  command = input.shift
  case command
  when 'add'
    # add the rest of command as a string
    $items.push input.join ' '
  when 'remove'
    # remove the rest of command as a string
    removed = $items.delete input.join ' '
    if removed.nil?
      puts 'Item not found.'
    end
  when 'exit'
    # end the program
    puts 'Bye!'
    break
  else
    # show help
    if not command.nil? and not command.empty?
      puts "Unrecognized command '#{command}'."
    end
    puts help
  end
  # run forever
  break if false
end
