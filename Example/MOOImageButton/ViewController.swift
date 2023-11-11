//
//  ViewController.swift
//  MOOImageButton
//
//  Created by 994355869@qq.com on 11/11/2023.
//  Copyright (c) 2023 994355869@qq.com. All rights reserved.
//

import UIKit
import MOOImageButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.topButton)
        self.view.addSubview(self.leftButton)
        self.view.addSubview(self.bottomButton)
        self.view.addSubview(self.rightButton)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        self.topButton.frame = CGRect(x: 50.0, y: 100.0, width: 100.0, height: 100.0)
        self.leftButton.frame = CGRect(x: 50.0, y: 250.0, width: 250.0, height: 100.0)
        self.bottomButton.frame = CGRect(x: 50.0, y: 400.0, width: 150.0, height: 100.0)
        self.rightButton.frame = CGRect(x: 50.0, y: 550.0, width: 250.0, height: 100.0)
    }

    private lazy var topButton: MOOImageButton = {
        let button = MOOImageButton(imagePosition: .top, imgTitleMargin: 6.0)
        button.setTitle("top image", for: .normal)
        button.setImage(UIImage(named: "moo_like"), for: .normal)
        button.backgroundColor = .gray
        return button
    }()
    
    private lazy var leftButton: MOOImageButton = {
        let button = MOOImageButton(imagePosition: .left, imgTitleMargin: 6.0)
        button.setTitle("left image", for: .normal)
        button.setImage(UIImage(named: "moo_like"), for: .normal)
        button.backgroundColor = .gray
        return button
    }()
    
    private lazy var bottomButton: MOOImageButton = {
        let button = MOOImageButton(imagePosition: .bottom, imgTitleMargin: 6.0)
        button.setTitle("bottom image", for: .normal)
        button.setImage(UIImage(named: "moo_like"), for: .normal)
        button.backgroundColor = .gray
        return button
    }()
    
    private lazy var rightButton: MOOImageButton = {
        let button = MOOImageButton(imagePosition: .right, imgTitleMargin: 6.0)
        button.setTitle("right image", for: .normal)
        button.setImage(UIImage(named: "moo_like"), for: .normal)
        button.backgroundColor = .gray
        return button
    }()
}

