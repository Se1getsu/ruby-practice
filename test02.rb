a = [3, 1, 4, 1, 5, 9, 2]
puts a[2]
puts a.size  # 別名：a.length
puts a.count { |item| item.odd? }

print "a ="
a.each do |v| print " #{v}" end; puts

print "a ="
a.each_with_index do |v, i| print " #{i}:#{v}" end; puts

hash = {"A" => 1, "B" => 2, "C" => 3}
puts hash[hash.keys.sample]
# hash.keys.class は Array
# array.sample はランダムな要素

print "key ="
hash.each_key do |k| print " #{k}" end; puts
print "val ="
hash.each_value do |v| print " #{v}" end; puts
print "h ="
hash.each_pair do |v,k| print " #{k}:#{v}" end; puts

# ↓比較用Python
# print(','.join(map(lambda x:str(2*x),a)))
  puts a.map{|x|2*x}.join','

# 末尾に要素追加（以下３つはどれも同じ意味）
a.append 7
a.push 7
a<<7
puts a.join','

b = a.dup   # コピー
b = a + [1] # 連結
puts a[-4]  # 後ろから

# スライス（以下３つはどれも同じ意味）
puts a[1..3].join'-'
puts a[1...4].join'-'
puts a[1,3].join'-'
# マイナスも問題なし
puts a[0..-1] == a

# パーセント書式も使える
puts "%02d" % a[0]

# a <=> b は a-b>0 ? 1 : a-b<0 ? -1 : 0 (比較不能は nil)
puts 3 <=> 5    # -1