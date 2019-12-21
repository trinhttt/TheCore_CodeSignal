//
//  ViewController.swift
//  TheCore_CodeSignal
//
//  Created by Trinh Thai on 12/21/19.
//  Copyright © 2019 Trinh Thai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //print(best_addTwoDigits(n: 293))
        print(largestNumber(n: 4))
    }

    // MARK: - 1: You are given a two-digit integer n. Return the sum of its digits.
    // Bạn được cấp một số nguyên n có hai chữ số. Trả về tổng các chữ số của nó.
    
    func addTwoDigits(n: Int) -> Int {
        var sum: Int = 0
        var temp = n
        while temp > 0 {
            sum += temp % 10
            temp = temp / 10
        }
        return sum
    }

    /// short way for two-digit
    func way2_addTwoDigits(n: Int) -> Int {
        print(n)
        return n/10 + n%10
    }
    
     // MARK: - 2: Cho một số nguyên n, trả về số lớn nhất chứa chính xác n chữ số.
    func largestNumber(n: Int) -> Int {
        let number = String(repeating: "9", count: n)
        return Int(number)!
    }
    
    func way2_largestNumber(n: Int) -> Int {
        return Int(pow(10.0, Double(n))) - 1
    }

}

