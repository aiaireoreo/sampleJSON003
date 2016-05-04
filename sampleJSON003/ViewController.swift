//
//  ViewController.swift
//  sampleJSON003
//
//  Created by AI Matsubara on 2016/05/04.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        
        
        //--json.txtファイルを読み込んで
        let path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
        
        
        //内容を取り出す
        let jsondata = NSData(contentsOfFile: path!)
        
        
        
        //辞書データに変換して
        //as データ型で指定したデータ型に変換
        let jsonDictionary = (try!NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSDictionary
        
        
        //辞書データの個数だけ繰り返して表示する
        //辞書データの個数はこの場合は２回なので２回繰り返される
        
        for (key, data) in jsonDictionary {
            
            var d1 = data["餅"] as! String
            var d2 = data["醤油"] as! String
            var d3 = data["月見団子"] as! String
            
            print("キー[\(key)]) 餅=\(d1)")
            print("キー[\(key)]) 醤油=\(d2)")
            print("キー[\(key)]) 月見団子=\(d3)")

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

