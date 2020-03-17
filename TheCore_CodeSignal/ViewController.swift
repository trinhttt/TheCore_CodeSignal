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
    
    // MARK: - 9
    
    func reachNextLevel(experience: Int, threshold: Int, reward: Int) -> Bool {
        return experience + reward >= threshold
    }
    
    // MARK: - 10
    // For value1 = 10, weight1 = 5, value2 = 6, weight2 = 4, and maxW = 8, the output should be
    //knapsackLight(value1, weight1, value2, weight2, maxW) = 10.

    func knapsackLight(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
        if maxW >= (weight1 + weight2) {
            return value1 + value2
        } else {
            if value1 >= value2 {
                if maxW >= weight1 {
                    return value1
                } else if maxW >= weight2 {
                    return value2
                } else {
                    return 0
                }
            } else if value1 <= value2  {
                if maxW >= weight2 {
                    return value2
                } else if maxW >= weight1 {
                    return value1
                } else {
                    return 0
                }
            } else {
                return 0
            }
        }
    }

    func BEST_knapsackLight(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
        guard maxW >= weight1 || maxW >= weight2 else { return 0 }
        guard maxW < weight1 + weight2 else { return value1 + value2 }
        guard maxW >= weight1 else { return value2 }
        guard maxW >= weight2 else { return value1 }
        return max(value1, value2)
    }
    // MARK: - 11

    /*
     You're given three integers, a, b and c. It is guaranteed that two of these integers are equal to each other. What is the value of the third integer?
     Example

     For a = 2, b = 7, and c = 2, the output should be
     extraNumber(a, b, c) = 7.

     The two equal numbers are a and c. The third number (b) equals 7, which is the answer.
     */
    func extraNumber(a: Int, b: Int, c: Int) -> Int {
        if a != b && a != c {
            return a
        } else if b != a && b != c {
            return b
        } else {
            return c
        }
    }
    func extraNumber2(a: Int, b: Int, c: Int) -> Int {
        return [a,b,c].reduce(0) { $0 ^ $1 }
    }

    func extraNumber1(a: Int, b: Int, c: Int) -> Int {
        if a == b { return c }
        if a == c {return b }
        return a
    }
    
    // MARK: - 12
    /*
     Given integers a and b, determine whether the following pseudocode results in an infinite loop

     while a is not equal to b do
       increase a by 1
       decrease b by 1
     Assume that the program is executed on a virtual machine which can store arbitrary long numbers and execute forever.
     */
    func isInfiniteProcess(a: Int, b: Int) -> Bool {
            if a == b { return false }
            let space = abs(a - b) / 2
            return a + space == b - space ? false : true
    }
    func BEST_isInfiniteProcess(a: Int, b: Int) -> Bool {
       return (a > b) || (a % 2 != b % 2)
    }

}

