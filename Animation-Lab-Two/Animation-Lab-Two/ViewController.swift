//
//  ViewController.swift
//  Animation-Lab-Two
//
//  Created by Eric Widjaja on 10/14/19.
//  Copyright © 2019 Eric Widjaja. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    //MARK: - Properties

    lazy var myView: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 40, y: 150, width: 55, height: 55))
        view.image = #imageLiteral(resourceName: "beach-ball.png")
        var frame = view.frame
//        frame.size.width = 55
//        frame.size.height = 55
        view.frame = frame
        view.backgroundColor = .clear
        return view
    }()

    lazy var myButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 300, y: 780, width: 100, height: 24))
        button.backgroundColor = .lightGray
        button.setTitle("ANIMATE", for: .normal)
        button.addTarget(self, action: #selector(animatePressed), for: .allTouchEvents)
        return button
        

    }()
    
    @objc func animatePressed(_ sender: UIButton) {
        UIView.animate(withDuration: 3, animations: {
            self.myView.transform = CGAffineTransform(translationX: 0, y: 600)
        })
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.747428, green: 0.6014839411, blue: 0.2487616241, alpha: 1)
        self.view.addSubview(myButton)
        self.view.addSubview(myView)
    }
}

