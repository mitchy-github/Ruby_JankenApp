def janken

puts "じゃんけん..."
puts "[0]:グー\n[1]:チョキ\n[2]:パー\n[3]:戦わない"

my_hand = gets.to_i

pc_hand = rand(3)

if my_hand > 3
	puts "入力された値が無効です。"
	return true
end

jankens=["グー","チョキ","パー"]

puts "あなたの手:#{jankens[my_hand]}, プログラムの手:#{jankens[pc_hand]}"
puts"------------------------------" 

  win = (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0)
  draw = my_hand == pc_hand
  fin = my_hand == 3
  
  
  if draw
    puts "あいこです！もう一度じゃんけんをします。"
    return true
    
  elsif fin
    puts "また今度！"
    @janken_judge = "fin"
    exit
   
  elsif win
    puts "やったね！"
    acchimuite_hoi
    @janken_judge = "win"
    
      
  else 
    puts "残念。負けちゃった。"
    acchimuite_hoi
    @janken_judge = "lose"
    
  end
end

#あっち向いてほいメソッド
def acchimuite_hoi

  puts "あっち向いて..."
  puts "[0]上\n[1]下\n[2]右\n[3]左"

  my_face = gets.to_i
  pc_face = rand(4)

  directions = ["上", "下", "右", "左"]
  puts "ホイッ！！"
  puts "あなたの向き:#{directions[my_face]}, 相手の向き:#{directions[pc_face]}"
  puts"------------------------------" 
  

  if @janken_judge == "win" && my_face == pc_face
    puts "おめでとう。あなたの勝ちです！"
    exit
    
  elsif @janken_judge == "lose" && my_face == pc_face
    puts "残念。あなたの負けです。"
    exit
    
  else
    puts "良い戦いだ！"
    return true
  end
end

next_game = true

while next_game do
  next_game = janken
end

