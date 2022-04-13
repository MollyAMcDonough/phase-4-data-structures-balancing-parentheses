require_relative './stack'

# your code here
def balancing_parentheses(str)
    stack = Stack.new
    chars = str.split("")
    closing = 0
    chars.each do |c|
        if c == '('
            stack.push(c)
        elsif c == ')' && stack.size == 0
            closing += 1
        else
            stack.pop
        end
    end
    closing + stack.size
end