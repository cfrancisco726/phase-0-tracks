# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”



puts "zom".insert(1, 'o')
# => “zoom”

puts "enhance".center("enhance".length + 8)

# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".insert(9, ' suspects')
#=> "the usual suspects"

puts " suspects".insert(0, 'the usual')
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".delete(" ").insert(11, " ").insert(14," ").insert(19, " ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# returns the ASCII character code

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4