import UIKit

import Foundation

let sum = 100000
let per = 9
let year = 5

var sumForYears = contribution(sum,per,year)
print("При первом взносе в \(sum) при \(per) процентов ожидается сумма: \(Float(sumForYears))")

//MARK: Расчет
func contribution(_ numberA: Int,_ numberB: Int,_ numberС: Int) -> Double {
    var sumCont = Double(numberA)
    for _ in 0..<numberС {
        sumCont += (sumCont / 100) * Double(numberB)
    }
    return sumCont;
}
//пробую создать ветку

