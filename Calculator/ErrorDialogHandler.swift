//
//  ErrorDialogHandler.swift
//  Calculator
//
//  Created by Nathan De Flavis on 26/07/2022.
//

import Foundation
import UIKit

class ErrorDialogHandler {
    static func showErrorDialog(message : String) {
        let alertController = UIAlertController(title: "Mathematical error", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
}
