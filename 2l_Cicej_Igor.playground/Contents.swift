import UIKit

                            //1. Функция: четное число или нет.

var firstArray = [22, 43, 12, 73, 3, 5, 8]
    for i in firstArray{
    if i % 2 == 0 {
        print("\(i) четное число")
    } else {
        print("\(i) нечетное число")
    }
}



                            //2. функция на три.

for e in firstArray{
    if e % 3 == 0 {
        print("\(e) делится на три без остатка")
    } else {
        print("\(e) делится на три с остатком")
    }
}




                        //3. Массив из 100 чисел.

var score: Array<Int> = []
for s in 1...100{
    score.append(s)
}
print(score)



                //4. Удаляем из массива все четные числа и все числа, которые не делятся на 3.

var remove = score.filter {$0 % 2 != 0 && $0 % 3 == 0}
   print(remove)

                  


                    //5

func mainArray(_ n: Int) -> [Double] {
    var formula: [Double] = [1, 1]
    (2...n).forEach{ f in
        formula.append(formula[f - 1] + formula[f - 2])
    }
    return formula
}
print(mainArray(100))





                  //6
    

func Numbers(arrayPassed: [Int]) -> [Int] {
    var primes: [Int] = []
    var newArr = arrayPassed
    while let newP = newArr.first {
        primes.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return primes
}
print(Numbers(arrayPassed: Array(2...100)))
