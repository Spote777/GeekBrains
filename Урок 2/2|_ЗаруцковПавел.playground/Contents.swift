import UIKit
import PlaygroundSupport

//1. Написать функцию, которая определяет, четное число или нет.
func myFuncEven(number: Int) {
    if number % 2 == 0 {
        print("Число \(number) четное")
    } else{
        print("Число \(number) нечетное")
    }
}
myFuncEven(number: 20)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func myFuncThree(number: Int) {
    if number % 3 == 0{
        print("Число \(number) делится на 3 без остатка")
    } else{
        print("Число \(number) не делится на 3 без остатка")
    }
}
myFuncThree(number: 21)


//3. Создать возрастающий массив из 100 чисел
var myArray: [Int] = []
    for i in 0...99 {
       myArray.append(i)
    }
print(myArray)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for (_, value) in myArray.enumerated() {
    if (value % 2) == 0 || (value % 3) > 0 {
        myArray.remove(at: myArray.firstIndex(of: value)!)

    }
}
print(myArray)

