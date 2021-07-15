# How many letters are used in counting from 1 to 1000 if they are written out as words?
# Cannot count spaces or hypens. Count "and" though!
# My thinking: We need to slice an array for each number containing each digit. 
# We have "and" between hundreds and tens. Meanwhile, if for tens place it is "ten, twenty" etc. 
function PlaceValue(number::Int) # Only works for three digit numbers.
    number = digits(number)
    LetterCounter = 0
    hundreds, tens, ones = "","",""
    if length(number) == 1
        prepend!(number, [0,0])
    elseif length(number) == 2
        prepend!(number, [0])
    else
        nothing
    end
# Checking for hundreds positon    
    if number[1] == 0
        nothing
    else 
        hundreds = string(checkdigit(number[1]),"hundredand")
    end
# Checking for tens place, accounting for special cases in terms of 10 < x < 20
    if number[2] == 0
        ones = string(checkdigit(number[3]))
    elseif number[2] == 1
        if number[3] == 0
            tens = checktens(number[2])
        elseif number[3] == 1
            tens = "eleven"
        elseif number[3] == 2
            tens = "twelve"
        elseif number[3] == 3
            tens = "thirteen"
        else
            tens = string(checktens(number[3]),"teen")
        end
    else
        tens = checktens(number[2])
        # Check for ones place
        if number[3] == 0
            nothing
        else
            ones = checkdigit(number[3])
        end
    end
    NamedNumber = string(hundreds,tens,ones)
    LetterCounter = length(NamedNumber)
    return LetterCounter, hundreds,tens, ones, NamedNumber
end

function checkdigit(n)
    if n == 1
        digitname = "one"
    elseif n == 2
        digitname = "two"
    elseif n == 3
        digitname = "three"
    elseif n == 4
        digitname = "four"
    elseif n == 5
        digitname = "five"
    elseif n == 6
        digitname = "six"
    elseif n == 7
        digitname = "seven"
    elseif n == 8
        digitname = "eight"
    else n == 9
        digitname = "nine"
    end
    return digitname
end

function checktens(n)
    if n == 1
        digitname = "ten"
    elseif n == 2
        digitname = "twenty"
    elseif n == 3
        digitname = "thirty"
    elseif n == 4
        digitname = "forty"
    elseif n == 5
        digitname = "fifty"
    elseif n == 6
        digitname = "sixty"
    elseif n == 7
        digitname = "seventy"
    elseif n == 8
        digitname = "eighty"
    else n == 9
        digitname = "ninety"
    end
    return digitname
end

# Find all letters for numbers from 1 to 1000
#Euler17 = sum([PlaceValue(i) for i=1:1000]) + length("onethousand")::Int
#print(Euler17)
LetterCounter, hundreds,tens, ones, NamedNumber = PlaceValue(200)
println(LetterCounter)
println(hundreds)
println(tens)
println(ones)
println(NamedNumber)