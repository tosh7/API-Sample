//
//  ViewController.swift
//  API-Sample
//
//  Created by Satoshi Komatsu on 2018/08/26.
//  Copyright © 2018年 Satoshi Komatsu. All rights reserved.
//

import UIKit
import APIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Session.send(FetchRepositoryRequest(userName: "tosh7")){ result in
            switch result {
                case .success(let res):
                    print("成功\(res)")
                case .failure(let err):
                    print("失敗\(err)")
            }
        }
    }
}
