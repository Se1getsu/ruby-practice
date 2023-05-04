a = 5

#----------------------------------#
if a % 6 == 0 then
    puts "aは6の倍数です。"
elsif a % 3 == 0 then
    puts "aは3の倍数です。"
elsif a % 2 == 0 then
    puts "aは2の倍数です。"
else
    puts "aは2でも3でも割れません。"
end
#----------------------------------#
case a
when 1..3 then puts "1-3の範囲"
when 4..6 then puts "4-6の範囲"
when 7..9 then puts "7-9の範囲"
else           puts "1-9の範囲外"
end
#----------------------------------#

puts "aは5です" if a == 5

# Ruby では false と nil のみが偽として処理される。

# if not = unless
puts "aは3じゃないです" unless a == 3
#----------------------------------#
while a % 10 != 0 do    # do は省略可
    a += 1
end
puts "#{a} % 10 == 0"
#----------------------------------#
until a % 100 == 0 do   # do は省略可
    a += 1
end
puts "#{a} % 100 == 0"
#----------------------------------#
begin
    a -= 1
end while a % 7 != 0    # until も可
puts "#{a} % 7 == 0"
#----------------------------------#
for i in 1..5 do        # do は省略可
    puts "%01d| Hello World!" % i
end
#----------------------------------#
5.times do |i|         # do 省略不可
    puts "%02d| Hello World!" % (i+1)
end
#----------------------------------#
for i, j in [[1,2],[3,4]]
    puts " #{i} #{j}"
end
#----------------------------------#
# break : ループを抜ける
# next  : コンティニュー
# redo  : ループ条件を無視してコンティニュー