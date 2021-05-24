//
//  ViewController.swift
//  Task5
//
//  Created by ちいつんしん on 2021/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!

    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculate(_ sender: Any) {

        guard let num1 = Int(textField1.text ?? "") else {
            showAlert(msg: "割られる数を入力してください")
            return

        }

        guard let num2 = Int(textField2.text ?? "") else {
            showAlert(msg: "割る数を入力してください")
            return
        }

        guard num2 != 0 else {
            showAlert(msg: "割る数には0を入力しないで下さい")
            return
        }

        let result = Double(num1 / num2)

        resultLabel.text = "\(result)"
    }

    private func showAlert(msg: String) {

        let alert = UIAlertController(title: "課題5", message: msg, preferredStyle: .alert)

        let defaultAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(defaultAction)

        present(alert, animated: true, completion: nil)
    }

}
