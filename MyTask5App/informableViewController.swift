//
//  informableViewController.swift
//  MyTask5App
//
//  Created by VERTEX24 on 2019/08/09.
//  Copyright © 2019 VERTEX24. All rights reserved.
//

import UIKit

class informableViewController: UITableViewController {
    // 名前の配列
    let names: [String] = ["永井 優",
                           "小野 勇輔",
                           "豊岡 正紘",
                           "分目 裕太",
                           "金田 祐作",
                           "甲斐崎 香",
                           "志賀 大河",
                           "津國 由莉子",
                           "中村 泰輔",
                           "堀田 真",
                           "田内 翔太郎",
                           "福沢 貴一",
                           "平田 奈那",
                           "吉澤 優衣"
    ]
    // 趣味の配列
    let hobby: [String] = ["あ",
                           "い",
                           "う",
                           "え",
                           "お",
                           "か",
                           "き",
                           "く",
                           "け",
                           "こ",
                           "さ",
                           "し",
                           "す",
                           "せ"
    ]
    // 何番目の人が押されたか代入するやつ
    var selectName: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    // セクション数の指定
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
 
   // セルの数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
    }

    // それぞれのセルに名前を入れるやつ
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
      
        return cell
}

    // セルの何番目が押されたかを見るやつ
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let select = indexPath.row
        // この関数の外に持ってくため代入
        selectName = select
        // 画面遷移させるやつ
        performSegue(withIdentifier: "gotoInfo", sender: nil)
    }
 
    // segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "gotoInfo", let vc = segue.destination as? imformedViewController else {
            return
        }
        // 押された人の名前と趣味を遷移先に送る
        vc.name = names[(selectName)]
        vc.hobby1 = hobby[(selectName)]
    }


}
