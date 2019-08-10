//
//  imformedViewController.swift
//  MyTask5App
//
//  Created by VERTEX24 on 2019/08/09.
//  Copyright © 2019 VERTEX24. All rights reserved.
//

import UIKit

class imformedViewController: UIViewController {
    // 前の画面から名前と趣味を受け取る変数
    var name: String = ""
    var hobby1: String = ""
    
   
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // labelに名前と趣味を出力
        nameLabel.text = name
        hobbyLabel.text = hobby1
 
    }
    


}
