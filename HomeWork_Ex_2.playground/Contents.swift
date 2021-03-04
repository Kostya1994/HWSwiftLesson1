import UIKit

import Foundation

let AB = 10
let BC = 20

var squareABC = triangleSquare(AB,BC)
var hypotenuseABC = triangleHypotenuse(AB,BC)
var perimeterABC = trianglePerimeter(AB,BC)

print("Площадь равнобедренного треугольника ABC = \(squareABC) \nГипотенуза равнобедренного треугольника ABC = \(hypotenuseABC) \nПериметр равнобедренного треугольника ABC \(perimeterABC)")

//MARK: Площадь равнобедренного треугольника ABC
func triangleSquare(_ numberA: Int,_ numberB: Int) -> Double {
    return (0.5 * Double(numberA) * Double(numberB));
}
//MARK: Гипотенуза равнобедренного треугольника ABC
func triangleHypotenuse(_ numberA: Int, _ numberB: Int) -> Double {
    return sqrt(pow(Double(numberA),2) + pow(Double(numberB),2));
    }
//MARK: Периметр равнобедренного треугольника ABC
func trianglePerimeter(_ numberA: Int,_ numberB: Int) -> Double {
    return (Double(numberA)) + (Double(numberB)) + triangleHypotenuse(AB,BC)
    }
//пробую создать ветку
