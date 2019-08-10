//
//  ViewController.swift
//  MyTask5App
//
//  Created by VERTEX24 on 2019/08/09.
//  Copyright © 2019 VERTEX24. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var name: String = ""
    var selectName: Int = 0

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    /*
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 14
    }
 */
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let select = indexPath.row
        
        selectName = select
        
        switch select {
        case 0:
            name = "永井 優"
        case 1:
            name = "小野 勇輔"
        case 2:
            name = "豊岡 正紘"
        case 3:
            name = "分目 裕太"
        case 4:
            name = "金田 祐作"
        case 5:
            name = "甲斐崎 香"
        case 6:
            name = "志賀 大河"
        case 7:
            name = "津國 由莉子"
        case 8:
            name = "中村 泰輔"
        case 9:
            name = "堀田 真"
        case 10:
            name = "田内 翔太郎"
        case 11:
            name = "福沢 貴一"
        case 12:
            name = "平田 奈那"
        default:
            name = "吉澤 優衣"
        }
        performSegue(withIdentifier: "gotoInfo", sender: nil)
    }
    
    // segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "gotoInfo", let vc = segue.destination as? imformedViewController else {
            return
        }
        vc.name = name
        vc.selectName = selectName
    }

}

