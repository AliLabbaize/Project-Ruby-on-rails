class QuizController < ApplicationController
 


  $a = ""
  $k =0
 

  def start
    @base = params[:base]
    puts @base
    if (@base == "General")||(@base == nil)
      $qst = []
      $ans = []
      $n = 0
      m = File.open("/home/ali/Desktop/2ndyear/Anglais/playandlearn/app/quiz.txt", "r")
      m.each_line do |line|
        $n = $n +1
        if(line[0]=="Q")
          a = line.split('.')[1].strip
          $qst << a
        
        elsif (line[0]=="A")
          a = line.split('.')[1].strip
          $ans << a
        end
      end
      m.close


    elsif (@base == "Capitals")
      $qst = []
      $ans = []
      $n = 0
      m = File.open("/home/ali/Desktop/2ndyear/Anglais/playandlearn/app/capitals.txt", "r")
      m.each_line do |line|
        $n = $n +1
          $qst << line.split('—')[0].strip
          $ans << line.split('—')[1].strip
      end
      m.close
      
 
    end

    $frontt = $qst[$k]
    $backk = $ans[$k]

  end




    def next
      if $k<$qst.length
        $k=$k+1
        $frontt = $qst[$k]
        $backk = $ans[$k]
      end 

      redirect_to quiz_start_path
    end

    def back
      if $k>0
        $k=$k-1
        $frontt = $qst[$k]
        $backk = $ans[$k]
      end 
      redirect_to quiz_start_path 
    end
    


  
end
