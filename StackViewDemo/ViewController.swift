//
//  ViewController.swift
//  StackViewDemo
//
//  Created by 蜂谷庸正 on 2018/03/28.
//  Copyright © 2018年 Tsunemasa Hachiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var stackViewParent: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear bounds Height", stackViewParent.bounds.size.height)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews bounds Height", stackViewParent.bounds.size.height)
        print("viewDidLayoutSubviews before Height constraint", viewHeightConstraint.constant)
        viewHeightConstraint.constant = stackViewParent.bounds.size.height + 25
        print("viewDidLayoutSubviews after Height", viewHeightConstraint.constant)
    }

}

