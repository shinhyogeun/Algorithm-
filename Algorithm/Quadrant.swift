//
//  Quadrant.swift
//  Algorithm
//
//  Created by 신효근 on 2020/07/31.
//  Copyright © 2020 신효근. All rights reserved.
//

import Foundation

let x = Int(readLine()!)!
let y = Int(readLine()!)!


if x > 0 && y > 0 {
    print("1")
} else if x < 0 && y > 0 {
    print("2")
} else if x < 0 && y < 0 {
    print("3")
} else {
    print("4")
}
