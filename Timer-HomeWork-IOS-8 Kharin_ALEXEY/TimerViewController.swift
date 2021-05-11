//
//  TimerViewController.swift
//  Timer-HomeWork-IOS-8 Kharin_ALEXEY
//
//  Created by Alexey Kharin on 10.05.2021.
//

import UIKit

class TimerViewController: UIViewController {
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        view.addSubview(timerLabel)
    }
    
    let timerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = .white
        return label
    }()
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        timerLabel.frame = CGRect(
            x: view.bounds.origin.x + 30,
            y: view.safeAreaInsets.top + 40,
            width: view.bounds.width - 30 * 2,
            height: 40)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.count += 1
            self.timerLabel.text = String(self.count)
        }
        RunLoop.current.add(timer, forMode: .default)
    }

}
