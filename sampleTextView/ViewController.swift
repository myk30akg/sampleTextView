//
//  ViewController.swift
//  sampleTextView
//
//  Created by 竹田美雪 on 7/21/16.
//  Copyright © 2016 竹田美雪. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var closeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // タイトル
        myLabel.text = "TextView TEST"
        // ボタンの名前と状態
        closeButton.setTitle("Close", forState: UIControlState.Normal)
        // fontの設定
        myTextView.font = UIFont(name: "AmericanTypewriter", size:20)
        myTextView.text = "Hello"
        
        // for文を使ってHelloを10回表示させる
        var strHello = ""
        for var i = 1; i <= 10 ; i++ {
            strHello = strHello + "Hello"
            print(strHello)
        }
        myTextView.text = strHello
        
        
    }

    @IBAction func tapButton(sender: UIButton) {
        myTextView.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

