class SynonymsController < ApplicationController

 # skip_before_action :only_signed_in, only: [:start]

  $dictio = Hash.new
  $words = []
  $linee = ""
  $a = ""
  def start
    f = File.open("/home/ali/Desktop/2ndyear/Anglais/playandlearn/app/controllers/synonyms_en.txt", "r")
    f.each_line do |line|
      a = line.split(', ')[0].strip
      $words << a
      $dictio[a] = line.split(',')[1].strip
    end
    f.close
   if (@Answer==$back)||(@Answer=="")
    $n = rand($words.length)
   end
    $front = $words[$n]
    $back = $dictio[$words[$n]] 
    @Answer = params[:Answer]
  end

  
  def random

    $n = rand($words.length)
    $show=false
    redirect_to synonyms_start_path

  end


  def showanswer
      $show = true
      redirect_to synonyms_start_path

  end








end
