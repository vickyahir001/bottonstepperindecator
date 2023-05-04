//
//  ViewController.swift
//  bottonstepperindecator
//
//  Created by R81 on 15/03/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indeCtor: UIActivityIndicatorView!
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var switchChnageColor: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchAction(_ sender: UISwitch) {
        if switchChnageColor.isOn == true{
            view.backgroundColor = .red
            indeCtor.startAnimating()
        }
        else
        {
            view.backgroundColor = .white
            indeCtor.stopAnimating()
        }
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        lable1.text = (Int(stepper1.value).description)
    }
}

