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

    // MARK: - 1: Bạn được cấp một số nguyên n có hai chữ số. Trả về tổng các chữ số của nó.
    
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
    
    //MARK: - 3
    func candies(n: Int, m: Int) -> Int {
        return n * (m/n)
    }
    
    //MARK: - 4
    func seatsInTheater(nCols: Int, nRows: Int, col: Int, row: Int) -> Int {
        return (nCols - col + 1) * (nRows - row)
    }
    
    //MARK: - 5
    func maxMultiple(divisor: Int, bound: Int) -> Int {
        return Int(bound / divisor) * divisor
    }

    //MARK: - 6
    func circleOfNumbers(n: Int, firstNumber: Int) -> Int {
        return (n / 2 + firstNumber) % n
    }
    
    //MARK: - 7
    func lateRide(n: Int) -> Int {
        let h = n / 60
        let m = n % 60
        return (h % 10) + (h / 10) + (m % 10) + (m / 10)
    }
    
    //MARK: - 8
    func phoneCall(min1: Int, min2_10: Int, min11: Int, s: Int) -> Int {
        if s < min1 {
            return 0
        } else if s == min1{
            return 1
        }else if s > min1 && s < (min1 + min2_10 * 9) {
            return 1 + (s - min1 ) / min2_10
        } else {
            return 1 + 9 + (s - min1 - 9 * min2_10) / min11
        }
    }
}

