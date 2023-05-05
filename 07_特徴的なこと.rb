
# 【命名規則】
# Pythonと同じ！！
# クラス名は PascalCase でそれ以外は基本 snake_case

# 【ハッシュのキー】
# String よりも、イミュータブルな Symbol を使用した方が
# 高速であるため好まれる。
hash = {:riceball => "おにぎり", :salmon => "しゃけ"}
p hash[:riceball]

# 【for文あんまり使わない】
range = 1..3
# この書き方よりも、
for i in range
    p i
end
# この書き方が好まれる。
range.each do |i|
    p i
end

# 【論理和代入】
a = nil
a || a = 8  # a = a ?? 8 (Swift)
# 解説： || は論理演算子の or で、a が true なら何も行われず、
# 　　　a が nil なら a=8 が評価される。これを通常、以下のように略す。
a ||= 8     # a = a ?? 8 (Swift)

# 【ぼっち演算子】
a = nil
b = a&.length   # b = a?.count (Swift)

# 【&:method】
a = ["12", "34", "56"]
p a             # ["12", "34", "56"]
p a.map &:to_i  # [12, 34, 56]
# map 関数の &block に &:to_i を渡している。&:ってなに？
# 引数の &block はブロック、block は Proc を表す。
# シンボル :to_i が Proc に暗黙的にキャストされている。
proc = :to_i.to_proc
p proc.call("123")      # 123
p a.map &proc           # [12, 34, 56]
# ブロックで書くとこうなる。
p a.map { |s| s.to_i }  # [12, 34, 56]
