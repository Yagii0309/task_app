## あっち向いてホイメソッド(勝ちの場合)
def look_win
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  number3 = gets.chomp.to_i
  puts "ホイ！"
  puts "---------------"
  direction = ["上","下","左","右"]
  you3 = "あなた：" + "#{direction[number3]}"
  opponent3 = "相手：" + "#{direction.sample}"
  puts you3
  puts opponent3
  puts "---------------"
  
  case number3
  when 0 then
    if opponent3 =~ /上/
      puts "あなたの勝ちです"
    else
    puts janken
    end
  when 1 then
    if opponent3 =~ /下/
      puts "あなたの勝ちです"
    else
      puts janken
    end
  when 2 then
    if opponent3 =~ /左/
      puts "あなたの勝ちです"
    else
      puts janken
    end
  when 3 then
    if opponent3 =~ /右/
      puts "あなたの勝ちです"
    else
      puts janken
    end
  end
end

## あっち向いてホイメソッド(負けの場合)
def look_lose
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  number4 = gets.chomp.to_i
  puts "ホイ！"
  puts "---------------"
  direction = ["上","下","左","右"]
  you4 = "あなた：" + "#{direction[number4]}"
  opponent4 = "相手：" + "#{direction.sample}"
  puts you4
  puts opponent4
  puts "---------------"
  
  case number4
  when 0 then
    if opponent4 =~ /上/
      puts "あなたの負けです"
    else
    puts janken
    end
  when 1 then
    if opponent4 =~ /下/
      puts "あなたの負けです"
    else
      puts janken
    end
  when 2 then
    if opponent4 =~ /左/
      puts "あなたの負けです"
    else
      puts janken
    end
  when 3 then
    if opponent4 =~ /右/
      puts "あなたの負けです"
    else
      puts janken
    end
  end
end

## じゃんけんメソッド
def janken
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  number = gets.chomp.to_i
  puts "ホイ！"
  puts "---------------"
  hand = ["グー", "チョキ", "パー"]
  you = "あなた：" +  "#{hand[number]}" + "を出しました"
  opponent = "相手：" + "#{hand.sample}" + "を出しました"
  puts you
  puts opponent
  puts "---------------"
  
  case number
  when 0 then
    if opponent =~ /グー/
      puts aiko
    elsif opponent =~ /チョキ/
      puts look_win
    elsif opponent =~ /パー/
      puts look_lose
    end
  when 1 then
    if opponent =~ /グー/
      puts look_lose
    elsif opponent =~ /チョキ/
      puts aiko
    elsif opponent =~ /パー/
      puts look_win
    end
  when 2 then
    if opponent =~ /グー/
      puts look_win
    elsif opponent =~ /チョキ/
      puts look_lose
    elsif opponent =~ /パー/
      puts aiko
    end
  when 3 then
    puts "終了しました。"
  end
end

## あいこメソッド
def aiko
  puts "あいこで..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  number2 = gets.chomp.to_i
  puts "ショ！"
  hand2 = ["グー", "チョキ", "パー"]
  you2 = "あなた：" +  "#{hand2[number2]}" + "を出しました"
  opponent2 = "相手：" + "#{hand2.sample}" + "を出しました"
  puts you2
  puts opponent2
  puts "---------------"
  
  case number2
  when 0 then
    if opponent2 =~ /グー/
      puts aiko
    elsif opponent2 =~ /チョキ/
      puts look_win
    elsif opponent2 =~ /パー/
      puts look_lose
    end
  when 1 then
    if opponent2 =~ /グー/
      puts look_lose
    elsif opponent2 =~ /チョキ/
      puts aiko
    elsif opponent2 =~ /パー/
      puts look_win
    end
  when 2 then
    if opponent2 =~ /グー/
      puts look_win
    elsif opponent2 =~ /チョキ/
      puts look_lose
    elsif opponent2 =~ /パー/
      puts aiko
    end
  when 3 then
    puts "終了しました"
  end
end

## 実行処理
puts janken