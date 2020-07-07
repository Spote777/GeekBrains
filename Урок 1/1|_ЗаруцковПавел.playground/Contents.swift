//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Foundation

//1. Решить квадратное уравнение.
let a:Float = 2; let b:Float = 5; let c:Float = 3
let d:Float = (b*b) - (4 * a * c)
if d < 0 {
    print("Уравнение не имеет корней")
} else if d == 0 {
    let Root:Float = (-b + d.squareRoot()) / (2 * a)
    print("Уравнение имеет один корень \(Root)")
} else if d > 0 {
    let oneRoot:Float = (-b + (d.squareRoot())) / (2 * a)
    let twoRoot: Float = (-b - (d.squareRoot())) / (2 * a)
    print("Уравнение имеет два корня. Первый:\(oneRoot)",",второй:\(twoRoot).")
}
//2.Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
let cat1 = 2
let cat2 = 3
let s = (cat1 * cat2)/2
var gip:Float = Float((cat1 * cat1) + (cat2 * cat2))
gip = gip.squareRoot()
let p = Float(cat1 + cat2) + gip
print("Площадь равна \(s)")
print("Гипотенуза равна \(gip)")
print("Периметр равен \(p)")

//3.Пользователь вводит сумму вклада и процент. Найти сумму вклада за 5 лет
import Foundation
print("Введите сумму вклада")
let userMoney = Int(readLine()!)!
print("Введите проценты")
var userPercent = Int(readLine()!)!
userPercent = userPercent / 100
var firstYear = userMoney + (userMoney * userPercent)
var twoYear = firstYear + (firstYear * userPercent)
var threeYear = twoYear + (twoYear * userPercent)
var fourYear = threeYear + (threeYear * userPercent)
var fiveYear = fourYear + (fourYear * userPercent)
print("За пять лет на вкладе будет: \(fiveYear)")


