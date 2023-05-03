def fun1(a, b="test", &block)
    puts "a=#{a}, b=#{b}"
    block.call if block_given?
    return "hello"
end

def fun2(*args, &block)
    if args.length >= 2
        fun1(args[0], args[1]) { block.call }
    end
end

puts fun1(1, 2)
fun2("one", "two") { puts "yeah" }

#----------------------------------#
s = "aaa"

def s.print
    puts "*** #{self} ***"
end

s.print