//
//  ViewController.swift
//  Calculator
//
//  Created by Nathan De Flavis on 25/07/2022.
//

import UIKit
import SwiftUI

/*!
 Basic calculator functionality
 */
class ViewController: UIViewController {
    @IBOutlet weak var inputA: UITextField!
    @IBOutlet weak var inputB: UITextField!
    @IBOutlet weak var output: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*!
     Clear inputs and output
     */
    @IBAction func clearAll(_ sender: Any) {
        inputA.text = ""
        inputB.text = ""
        output.text = ""
    }
    
    /*!
     Compute subtraction of input b from input a
     */
    @IBAction func computeInputDifference(_ sender: Any) {
        if !inputsAreValid() {
            return
        }
        
        let a = Double(inputA.text!)
        let b = Double(inputB.text!)
        let difference = Arithmetic.getDifference(a: a!, b: b!)
        output.text = "\(difference)"
    }

    /*!
     Compute product of inputs
     */
    @IBAction func computeInputProduct(_ sender: Any) {
        if !inputsAreValid() {
            return
        }
        
        let a = Double(inputA.text!)
        let b = Double(inputB.text!)
        let product = Arithmetic.getProduct(a: a!, b: b!)
        output.text = "\(product)"
    }

     /*!
      Compute division of input a by non-zero input b
      */
    @IBAction func computeInputQuotient(_ sender: Any) {
        if !inputsAreValid() {
            return
        }
        
        let a = Double(inputA.text!)
        let b = Double(inputB.text!)
        
        do {
            let quotient = try Arithmetic.getQuotient(a: a!, b: b!)
            output.text = "\(quotient)"
        } catch ArithmeticError.divisionByZero {
            let alertController = UIAlertController(title: "Mathematical error", message: "Not a number", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(alertAction)
            self.present(alertController, animated: true)
        } catch {}
    }
    
    /*!
     Compute sum of inputs
     */
    @IBAction func computeInputSum(_ sender: Any) {
        if !inputsAreValid() {
            return
        }

        let a = Double(inputA.text!)
        let b = Double(inputB.text!)
        let sum = Arithmetic.getSum(a: a!, b: b!)
        output.text = "\(sum)"
    }
    
    /*!
     Compute non-percentage value equivalent to input a treating a as percentage e.g. when a = 50, returns 0.5
     */
    @IBAction func evaluateInputAAsPercentage(_ sender: Any) {
        if !InputValidator.isValid(input: inputA.text) {
            return
        }
        
        let a = Double(inputA.text!)
        let aEvaluatedAsPercentage = Arithmetic.getValueOfPercentage(a: a!)
        inputA.text = "\(aEvaluatedAsPercentage)"
    }
    
    private func inputsAreValid() -> Bool {
        return InputValidator.areValid(inputs: [inputA.text, inputB.text])
    }

    /*!
     Negate sign of non-zero input e.g. when a = 1, returns -1
     */
    @IBAction func negateInputA(_ sender: Any) {
        if !InputValidator.isValid(input: inputA.text) {
            return
        }
        
        let a = Double(inputA.text!)
        let aNegated = Arithmetic.getNegation(a: a!)
        inputA.text = "\(aNegated)"
    }

    /*!
     Set value of input a to value of output (similar to memory function on basic calculator)
     */
    @IBAction func setInputAToOutput(_ sender: Any) {
        inputA.text = output.text
    }
}
