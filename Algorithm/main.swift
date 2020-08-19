//
//  main.swift
//  Algorithm
//
//  Created by 신효근 on 2020/07/31.
//  Copyright © 2020 신효근. All rights reserved.


//import Foundation
// self number 문제(8/2)
//
//func d(_ n:Int) -> Int{
//    var result = n
//    let a = String(n)
//    let b = Array(a)
//    let c = b.map({ (value : Character) -> Int in Int(String(value))!})
//    for i in 0...c.count-1{
//     result = result + c[i]
//    }
//    return result
//}
//func isThisNumberSelfNumber(n: Int) {
//    var mother : [Int] = Array(repeating: 0, count: n)
//    for i in 0...mother.count-1{
//        if d(i+1) <= mother.count{
//         mother[d(i+1)-1] = 1
//        }
//        if mother[i] == 0{
//            print(i+1)
//        }
//    }
//}
//isThisNumberSelfNumber(n: 10000)

//import Foundation
// 한수 문제(8/2)
//let n = Int(readLine()!)!
//func isThisNumberHan(_ n:Int) -> Int{
//    var mother : Int = 0
//    for i in 1...n {
//     if i < 100{
//      mother += 1
//     } else {
//      let stringfy = String(i)
//      let stringArr = Array(stringfy)
//      let IntArr = stringArr.map { (value : String.Element) -> Int in return Int(String(value))!}
//      if IntArr[1]-IntArr[0] == IntArr[2] - IntArr[1]{ mother += 1}
//        }
//    }
//    return mother
//}
//print(isThisNumberHan(n))


//A+B +5 문제

//import Foundation
//while let line = readLine() {
//    let realLine = line.split(separator: " ")
//    let a = Int(realLine[0])!
//    let b = Int(realLine[1])!
//    print(a+b)
//}

//A+B -4 문제
//import Foundation
//
//let A = Int(readLine()!)!
//
//var B : Int?
//var C : Int = A
//
//var count = 0
//
//while A != B {
//    count+=1
//    if C < 10 {
//        B = 10*C + C
//    } else {
//        B = (C%10)*10 + (C/10+C%10)%10
//    }
//    C = B!
//}
//
//print(count)

//평균구하기
//import Foundation
//
//let A = Int(readLine()!)!
//let B = Int(readLine()!)!
//let C = Int(readLine()!)!
//let D = Int(readLine()!)!
//let E = Int(readLine()!)!
//
//var Arr = [A,B,C,D,E]
//
//var total = 0
//for i in 0...Arr.count-1{
//    if Arr[i] < 40 {
//        total += 40
//    } else {
//        total += Arr[i]
//    }
//
//    if i == Arr.count - 1 {
//        total = total / Arr.count
//        print(total)
//    }
//}

//상근날드
//
//import Foundation
//
//let A = Int(readLine()!)!
//let B = Int(readLine()!)!
//let C = Int(readLine()!)!
//let D = Int(readLine()!)!
//let E = Int(readLine()!)!
//
//var burgerArr = [A,B,C]
//var beverageArr = [D,E]
//
//let real1 = burgerArr.min()
//let real2 = beverageArr.min()
//
//print(real1! + real2! - 50)


//소팅

//import Foundation
//
//let real = readLine()!
//let a = real.components(separatedBy: " ")
//var b = a.map { (al : String) -> Int in Int(al)!}
//print(b.sorted()[1])

//별찍기

//import Foundation
//var result = ""
//
//let a = Int(readLine()!)!
//
//for i in 1...2*a-1 {
//    if i <= a {
//        for _ in 1...i {
//            result.append("*")
//        }
//        print(result)
//        result = ""
//    } else if i > a {
//        for _ in 1...2*a-i {
//            result.append("*")
//        }
//        print(result)
//        result = ""
//    }
//}

//별찍기2
//
//import Foundation
//
//var result = ""
//let a = Int(readLine()!)!
//
////전체 범위
//for i in 1...2*a-1{
//
//    //감소하는 부분
//    if i <= a {
//        for j in 0...i-1 {
//            if j != 0{
//             result.append(" ")
//            }
//        }
//        for _ in 1...(2*a-1) - (2*(i-1)){
//                result.append("*")
//        }
//        print(result)
//        result = ""
//
//    //다시 증가하는 부분
//    }
//    else if i > a{
//        for j in 0...(2*a-1)-i {
//           if j != 0 {
//             result.append(" ")
//            }
//        }
//        for _ in 1...(2*a-1) - 2*((2*a-1)-i){
//                result.append("*")
//        }
//        print(result)
//        result = ""
//    }
//}

//import Foundation
//
//let howManyLineDoYouNeed = Int(readLine()!)!
//
//var result = ""
//
//for i in 1...2*howManyLineDoYouNeed {
//    if i%2 != 0 {
//        for j in 1...howManyLineDoYouNeed {
//            if j%2 != 0 {
//                result.append("*")
//            } else {
//                result.append(" ")
//            }
//        }
//        print(result)
//        result = ""
//    } else {
//        for j in 1...howManyLineDoYouNeed {
//            if j%2 != 0 {
//                result.append(" ")
//            } else {
//                result.append("*")
//            }
//        }
//        print(result)
//        result = ""
//    }
//}

//import Foundation
//
//var max: Int = 0
//var a = 1
//var things : Array<Int> = []
//while let line = readLine() {
//    a = a+1
//    things.append(Int(line)!)
//    max = Int(line)! > max ? Int(line)! : max
//    if a > 9 {
//        for i in 0...8 {
//            if max == things[i] {
//                print(max)
//                print(i+1)
//            }
//        }
//        break
//    }
//}
//for i in 0...8{
//    let a = Int(readLine()!)!
//    max = a > max ? a : max
//    things.append(a)
//    if i == 8 {
//        print(max)
//        for j in 0...8 {
//            if max == things[j]{
//                print(j)
//            }
//        }
//    }
//}


//let numberArr = things!.map { (arr : String) -> Int in Int(arr)!}
//print("\(numberArr.sorted()[0]) \(numberArr.sorted()[howMany-1])")


import Foundation

let A = Int(readLine()!)!
let B = Int(readLine()!)!
let C = Int(readLine()!)!
var array = [Int](repeating: 0, count: 10)
var temp: Int = 0

var result = A*B*C

while result != 0 {
    temp = result%10
    array[temp] = array[temp]+1
    result = result/10
}
for i in 0...9{
 print(array[i])
}
