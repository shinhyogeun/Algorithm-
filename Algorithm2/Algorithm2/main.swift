//
//  main.swift
//  Algorithm2
//
//  Created by 신효근 on 2020/08/19.
//  Copyright © 2020 신효근. All rights reserved.
//

//import Foundation
//
//var a = 1
//var b = 0
//var arr = [Int](repeating: 0, count: 42)
//var finalArr : Array<Int> = []
//while let read = readLine() {
//    a = a + 1
//    b = Int(read)!%42
//    arr[b] = arr[b] + 1
//    if a > 10 {
//       finalArr = arr.filter { (value : Int) -> Bool in
//            value != 0
//        }
//        print(finalArr.count)
//        break
//    }
//}

//import Foundation
//
//let a = Double(readLine()!)!
//var arr = readLine()!.components(separatedBy:" ").map { (value : String) -> Double in Double(value)!}
//var newArr = [Double].init(repeating: Double(0), count: arr.count)
//var result : Double = 0
//
//var max = Double(0)
//for i in 0...Int(a-1) {
//    max = arr[i] > max ? arr[i] : max
//}
//for i in 0...Int(a-1) {
//  newArr[i] = (arr[i]/max)*Double(100)
//  result = result + newArr[i]
//    if i == Int(a-1) {
//        result = result/a
//        print(result)
//    }
//}

//import Foundation
//
//let a = Int(readLine()!)!
//var limit = 0
//var resultArr = [Int].init(repeating: 0, count: a)
//while let read = readLine() {
//    limit = limit + 1
//    var score = 0
//    var upup = 0
//    for i in read {
//        if String(i) == "O" {
//            upup = upup + 1
//            score = score + upup
//        } else if String(i) == "X" {
//            upup = 0
//        }
//    }
//    resultArr[limit-1] = score
//    if limit == a {
//        for i in 0...a-1 {
//            print(resultArr[i])
//        }
//        break
//    }
//}

//var a = readLine()!
//var ds = [String].init(repeating: "D", count: a.count)
//for index in a.indices {
//    Int(a[index] as Character) as BinaryInteger
//}
//print(ds)

//var str =  "21231"
//
//for index in str{
//
//    print(Int(String(index))!)
//
//}

//import Foundation
//
//let a = Double(readLine()!)!
//var limit : Double = 0
//var resultArr : [String] = []
//
//while let read = readLine() {
//    limit = limit + 1
//    let whole = read.components(separatedBy: " ").map { (value : String) -> Double in Double(value)! }
//    let howMany = whole[0]
//    var mean : Double = 0
//    var realQuick : Double = 0
//    for i in 1...whole.count-1 {
//        mean = mean + whole[i]
//        if i == whole.count - 1 {
//            mean = mean / (Double(whole.count)-1)
//            for i in 1...whole.count-1 { if whole[i] > mean { realQuick = realQuick + 1 } }
//            resultArr.append(String(format: "%.3f", (realQuick/howMany)*100) + "%")
//        }
//    }
//    if limit == a {
//        for i in 0...Int(a-1){
//            print(resultArr[i])
//        }
//        break
//    }
//}


//카카오톡 최고난도문제

import Foundation

let read = readLine()!.components(separatedBy: " ").map{ (value : String) -> Int in Int(value)! }

let length = read[0]
let howManyHeight = read[1]
let howManyGround = read[2]

let limit = howManyGround+howManyHeight
var VSlimit = 0

var groundX : Array<Double> = []
var groundY : Array<Double> = []
var skyX : Array<Double> = []
var skyY : Array<Double> = []
var totalX : Array<Double> = []
var totalY : Array<Double> = []

var groundLength : Double = 0
var didYouPossibleToGetBenefit : Array<Double> = []
var returnValue : Double?

while let read2 = readLine() {
    VSlimit = VSlimit + 1
    if VSlimit <= howManyHeight {
        
        let a = read2.components(separatedBy: " ").map{ (value : String) -> Double in Double(value)! }
        skyX.append(a[0])
        skyY.append(a[1])
        totalX.append(a[0])
        totalY.append(a[1])
    } else if VSlimit > howManyHeight{
        let a = read2.components(separatedBy: " ").map{ (value : String) -> Double in Double(value)! }
        groundX.append(a[0])
        groundY.append(a[1])
        totalX.append(a[0])
        totalY.append(a[1])
    }
    
    
    if VSlimit == limit {
        
        func measureBenefitLength(first:Array<Double>, second:Array<Double>) -> Double{
            var a = (second[1]-first[1]) ; var b = (second[0]-first[0])
            a = pow(a, 2); b = pow(b, 2)
            return a+b - sqrt(a+b)
        }

        func isThisMeasurePossible(first:Array<Double>, second:Array<Double>) -> Bool{
            for i in 0...limit-1{
                if groundX[i] >= first[0] && groundX[i] <= second[0]{
                    if second[1] > first[1]{
                        if groundY[i] >= second[1] && groundX[i] == first[0]{
                            return false
                        }
                    }else{
                        if groundY[i] >= first[1] && groundX[i] == second[0]{
                            return false
                        }
                    }
                    for j in 0...skyX.count-1{
                        if skyX[j] == totalX[i] && skyY[j] == totalY[i]{
                            if first[1]<second[1]{
                                   var a = (second[1]-first[1]) ; var b = (second[0]-first[0])
                                   a = pow(a, 2); b = pow(b, 2)
                                   var c = (totalX[i]-first[0]) ; var d = (totalY[i]-first[1])
                                   c = pow(c,2) ; d = pow(d,2)
                                   if cos((second[0]-first[0])/(sqrt(a+b))) < cos((totalX[i]-first[0])/sqrt(c+d)){
                                       return false
                                   }
                               }else if first[1]>second[1]{
                                   var a = (second[1]-first[1]) ; var b = (second[0]-first[0])
                                   a = pow(a, 2); b = pow(b, 2)
                                   var c = (totalX[i]-first[0]) ; var d = (totalY[i]-first[1])
                                   c = pow(c,2) ; d = pow(d,2)
                                   if cos((first[1])/(sqrt(a+b))) < cos((first[1]-totalY[i])/(sqrt(c+d))){
                                       return false
                                   }
                            }
                        } else{
                            if first[1]<second[1]{
                                var a = (second[1]-first[1]) ; var b = (second[0]-first[0])
                                a = pow(a, 2); b = pow(b, 2)
                                var c = (totalX[i]-first[0]) ; var d = (totalY[i]-first[1])
                                c = pow(c,2) ; d = pow(d,2)
                                if cos((second[0]-first[0])/(sqrt(a+b))) > cos((totalX[i]-first[0])/sqrt(c+d)) || totalY[i]>=second[1]{
                                    return false
                                }
                            }else if first[1]>second[1]{
                                var a = (second[1]-first[1]) ; var b = (second[0]-first[0])
                                a = pow(a, 2); b = pow(b, 2)
                                var c = (totalX[i]-first[0]) ; var d = (totalY[i]-first[1])
                                c = pow(c,2) ; d = pow(d,2)
                                if cos((first[1])/(sqrt(a+b))) > cos((first[1]-totalY[i])/(sqrt(c+d))) || totalY[i]>=first[1] {
                                    return false
                                }
                         }
                      }
                    }
                }
            }
            return true
        }
        
        for i in 0...howManyGround-1{
            if i < howManyGround-1{
             groundLength = groundLength + abs((groundX[i+1]-groundX[i]) + (groundY[i+1]-groundY[i]))
            }
        }
        
        for i in 0...limit-1{
            if totalY[i] <= groundY.max()! && totalY[i] > 0 && totalX[i] != 0{
                for j in 0...groundX.count-1{
                    if groundX[j] < totalX[i] && groundY[j] != totalY[i] {
                        if isThisMeasurePossible(first: [groundX[j],groundY[j]], second: [totalX[i],totalY[i]]){
                            didYouPossibleToGetBenefit.append(measureBenefitLength(first: [groundX[j],groundY[j]], second: [totalX[i],totalY[i]]))
                        }
                    }
                }
            }
        }
        if let realLast = didYouPossibleToGetBenefit.max(){
        print(groundLength-realLast)
        print(groundLength)
        }
        break
    }
}
