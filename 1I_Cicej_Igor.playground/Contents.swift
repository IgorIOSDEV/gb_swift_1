import UIKit

//квадратное уравнение: ax2 + bx + c = 0

var a: Float
var b: Float
var c: Float

a = -20
b = 8
c = 1.5

let discr: Float = (b * b) - (4 * a * c)

print("a =" + " \(a) " + "\n" + "b =" + " \(b) "  + "\n" + "c =" + " \(c) "  + "\n" + "d =" + " \(discr)")

var x1 = (-b + sqrt(discr)) / (2 * a)
var x2 = (-b - sqrt(discr)) / (2 * a)
var x = -b / (2 * a)

if discr > 0 {
    print("x1 =" + " \(x1) " + "\n" + "x2 =" + " \(x2) ")
}    else if discr == 0 {
    print("x =" + " \(x) ")
} else {
    print("Корней нет")
    
}


// задание 3


var depositSum = 1387
var percent = 14
var depositAmount =  depositSum + (depositSum * percent) / 100


print("Изменение размера вклада по годам:")
var i = 1
for i in 1...5 {
    depositAmount = depositAmount + (depositAmount * percent) / 100
    print("\(i) " + "год: " + "\(depositAmount)" + "$")
    
}


// задание 2

var firstCathetus: Float = 3
var secondCathetus: Float = 4
var hypotenuse = sqrt((firstCathetus * firstCathetus) + (secondCathetus * secondCathetus))

var s = (firstCathetus * secondCathetus) / 2
//var s - значит площадь треугольника

let perimeter: Float = firstCathetus + secondCathetus + hypotenuse

print("Площадь треугольника =" + " \(s)")
print("Периметр =" + " \(perimeter)")
print("Гипотенуза =" + " \(hypotenuse)")

    




