function getData()
    print("Hi there!\nInsert any number here: ");
    firstNumber = io.read("*n");
    print("Would you insert another one?")
    secondNumber = io.read("*n");

    if(inputIsNull(firstNumber, secondNumber)) then
        print("So... you see i requested for numbers, right?");
        getData();
    else
        showInputs();
    end
end

function inputIsNull(firstNumber, secondNumber)
    return firstNumber == nil or secondNumber == nil
end

function showInputs()
    print("Thanks for providing me data!");
    print("First Number: " .. firstNumber);
    print("Second Number: " .. secondNumber);
    print(biggerOne(firstNumber, secondNumber));
end

function biggerOne(firstNumber, secondNumber)
    if(secondNumber > firstNumber) then
        return(secondNumber .. " is the bigger one!");
    else if(secondNumber == firstNumber) then
        return("So cute... " .. firstNumber .. " and " .. secondNumber .. " are equal :D");
    else
        return (firstNumber .. " is the bigger one!");
    end
end

end

getData();