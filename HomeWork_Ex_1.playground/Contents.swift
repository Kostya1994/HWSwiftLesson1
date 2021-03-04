import UIKit

import Foundation

let a = 0
let b = 20
let c = 4


var result = quadraticEquation(a, b, c)
print("x1 = \(Float16(result[0])) + x2 = \(Float16(result[1]))")

//MARK: x1 = (-b + √d) / 2a
func equationX1(_ numberA: Int,_ numberB: Int,_ numberD: Double) -> Double {
    return (-(Double(numberB)) + sqrt(numberD)) / 2 * Double(numberA);
}

//MARK: x2 = (-b - √d) / 2a
func equationX2(_ numberA: Int,_ numberB: Int,_ numberD: Double) -> Double {
    return (-(Double(numberB)) - sqrt(numberD)) / 2 * Double(numberA);
}

//MARK: Вычисляем дискриминант
func discriminant(_ a2: Int, _ b2: Int, _ c2: Int ) -> Double {
    return pow(Double(b2),2) - (4 * Double(a2) * Double(c2));
    }
//MARK: Общее тело решения
func quadraticEquation(_ a1: Int,_ b1: Int,_ c1: Int ) -> [Double]{
    if (a == 0) {
        print("Число \(a1) равно 0, введите другое число")
        return Array(repeating: 0.0, count: 2)
    }else
    {
        var arr = [Double]();
        let dis = discriminant(a1, b1, c1);//функция вычисления дискриминаты a,b,c;
            if (dis > 0.0) {
                print("Дискриминант \(Int(dis)) больше 0. Значит есть 2 корня, x1 и x2")
                let x1 = equationX1(a1, b1, dis)
                let x2 = equationX2(a1, b1, dis)
                arr.append(x1)
                arr.append(x2)
                return arr;
            }else if (dis == 0.0){
                print("Дискриминант \(Int(dis)) равен 0. Значит есть 1 корень x1, а x2 = 0")
                let x1 = equationX1(a1, b1, dis)
                arr.append(x1)
                return arr;
            }else if (dis < 0.0){
                print("Дискриминант \(Int(dis)) меньше 0. Значит корней нет")
                return Array(repeating: 0.0, count: 2)
            }
        return arr
    }
}
//пробую создать ветку
