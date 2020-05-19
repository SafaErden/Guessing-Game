class GuessingGame
  attr_reader :num_attempts

  def initialize(min,max)
    if min<max 
       @secret_num=rand min..max 
    else
       @secret_num=rand max..min
    end
    @num_attempts=0
    @game_over = false
  end

  def game_over?
    @game_over
  end

  def check_num(num)
    @num_attempts+=1
    if num==@secret_num
      @game_over=true
      print 'you win'
    elsif num>@secret_num
      print 'too big'
    else
      print 'too small'
    end
  end

  def ask_user
    print 'enter a number'
    a=gets.chomp.to_i
    check_num(a)
  end
end