require "csv"

  puts "1(新規でメモを作成) 2(メモを編集する)"
  memo_type = gets.to_i
  if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp
      
    puts "メモを入力してください"
    puts "入力後、ctrl + D で保存"
      
    memo = STDIN.read
      CSV.open("#{file_name}.csv","w") do |csv|
        csv << ["#{memo}"]
      end
      
  elsif memo_type == 2
    puts "編集したいファイル名を記入してください"
    file_name = gets.chomp
      
    puts "編集内容を入力してください"
    puts "入力後、ctrl + D で保存"
      
    memo = STDIN.read
      CSV.open("#{file_name}.csv","a") do |csv|
        csv << ["#{memo}"]
      end
  end