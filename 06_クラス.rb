
# getter, setter を設定しないと、
# デフォルトでは @name, @@count は外部から隠蔽される点に注意が必要

class Human # < SuperClass

    @@count = 0     # クラス変数

    # attr_reader :name  # これがないと h.name は外部から参照できない
    # attr_writer :name  # これがないと h.name は外部から変更できない
    attr_accessor :name  # 上記２つをまとめたものがこれ (複数は,区切り)

    # 《 attr_accessor は以下の２つのメソッドの定義を自動化する》
    #
    # def name
    #     @name     # return は省略可
    # end
    #
    # def name=(new_name)
    #     @name = new_name
    # end

    def self.count
        @@count
    end

    # イニシャライザは省略可能
    def initialize(name=nil)
        @@count += 1
        @name = name if name
    end
end

sgt = Human.new
sgt.name = "霽月"
shk = Human.new "終に鮭"
p sgt.name
p shk.name
p Human.count