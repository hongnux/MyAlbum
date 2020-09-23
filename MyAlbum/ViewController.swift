//
//  ViewController.swift
//  MyAlbum
//
//  Created by HJM on 2020/09/22.
//

import UIKit

class ViewController: UIViewController {
    var current = 0     // var current : Int = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()       // 앱 실행시 보여지는 값
    }
    @IBAction func hello(_ sender: Any) {
        // Alert 띄우기
        let message = "현재 가격은 ₩ \(current)입니다."
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {action in self.refresh()}) // closure
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        // 가격 변경  refresh()
        
    }
    
    func refresh(){
        let randomPrice = arc4random_uniform(10000) + 1
        current = Int(randomPrice)
        priceLabel.text = "₩ \(current)"
    }
}

