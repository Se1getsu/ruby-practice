
class Human # < SuperClass

    @@count = 0     # 外からはアクセス不可

    # attr_reader :hoge  # これがないと h.hoge は外部から参照できない
    # attr_writer :hoge  # これがないと h.hoge は外部から変更できない
    attr_accessor :hoge  # 上記２つをまとめたものがこれ

    def setName(name)
        @name = name
    end

    def getName
        return @name
    end

    # イニシャライザは省略可能
    def initialize(name=nil)
        @@count += 1
        @name = name if name
        @hoge = "ほげぇ"
    end

    def self.getCount
        @@count     # return は省略可
    end
end

sgt = Human.new
shk = Human.new("Shimai ni Shake")
sgt.setName "Seigetsu Masuta"
p sgt.getName
p shk.getName
p Human.getCount

p shk.hoge
shk.hoge = "ほげほげぇ"
p shk.hoge