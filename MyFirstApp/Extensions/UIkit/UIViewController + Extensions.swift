//
//  UIViewController + Extensions.swift
//  MyFirstApp
//
//  Created by Роман Савин on 11.03.2023.
//

import UIKit

extension UIViewController {
    func presentSimpleAlert(title: String, message: String?) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}
