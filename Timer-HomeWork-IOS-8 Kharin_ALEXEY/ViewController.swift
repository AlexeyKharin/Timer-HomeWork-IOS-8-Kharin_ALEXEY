//
//  ViewController.swift
//  Timer-HomeWork-IOS-8 Kharin_ALEXEY
//
//  Created by Alexey Kharin on 10.05.2021.


import UIKit

class ViewController: UIViewController {
    
    

    @IBAction func openTimer(_ sender: Any) {
        let vc = TimerViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
//  Таймер можно использовать для нормирования работы тех или иных приложений для детей, чтобы они больше n-го количества времени не проводиле в телефони, или в определённом приложении. Так же можно использовать для напоминаний связанных с контролем расходования дененег, привычек прививаемых.
    }



