def my_function_yield
 puts "execute my function by #{yield}"
end

def my_function_block(&block)
 puts "execute my function by #{block.call()}"
end

my_function_yield do 
 "first call yield"
end

# Lambda
my_function_block(&->{ "lambda call" })

# simple block
my_function_block do
 "second call with block"
end

# Proc
my_function_block(&proc {"proc call"})
