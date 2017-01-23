module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + " :)"
  end

end



# p Shout.yell_angrily("hello")
# p Shout.yelling_happily("hello")

class Umpire
	include Shout
end

class Teacher
	include Shout
end

umpire = Umpire.new
p umpire.yell_angrily("Strriiiiiiike")
p umpire.yelling_happily("ball...")


teacher = Teacher.new
p teacher.yell_angrily("Be quiet kids")
p teacher.yelling_happily("Goodmorning")

