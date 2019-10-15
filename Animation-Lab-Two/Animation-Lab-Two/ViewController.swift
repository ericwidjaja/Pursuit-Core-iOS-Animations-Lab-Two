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

    lazy var linearView: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 45, y: 120, width: 55, height: 55))
        view.image = #imageLiteral(resourceName: "beach-ball.png")
        var frame = view.frame
        view.frame = frame
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var easeInView: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 135, y: 120, width: 55, height: 55))
        view.image = #imageLiteral(resourceName: "beach-ball.png")
        var frame = view.frame
        view.frame = frame
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var easeOutView: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 225, y: 120, width: 55, height: 55))
        view.image = #imageLiteral(resourceName: "beach-ball.png")
        var frame = view.frame
        view.frame = frame
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var easeInOutView: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 315, y: 120, width: 55, height: 55))
        view.image = #imageLiteral(resourceName: "beach-ball.png")
        var frame = view.frame
        view.frame = frame
        view.backgroundColor = .clear
        return view
    }()

    lazy var animateButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 300, y: 800, width: 100, height: 24))
        button.backgroundColor = .lightGray
        button.setTitle("ANIMATE", for: .normal)
        button.addTarget(self, action: #selector(animatePressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var startButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 170, y: 820, width: 100, height: 24))
        button.backgroundColor = .red
        button.setTitle("START", for: .normal)
        button.addTarget(self, action: #selector(startPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var resetButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 30, y: 800, width: 100, height: 24))
        button.backgroundColor = .lightGray
        button.setTitle("R E S E T", for: .normal)
        button.addTarget(self, action: #selector(resetPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    @objc func animatePressed(sender: UIButton) {
        UIView.animate(withDuration: 1.5, animations: {
            self.linearView.transform = CGAffineTransform(translationX: 0, y: 600)
        })
        UIView.animate(withDuration: 1.5, delay: 0, options: .curveEaseIn, animations: {
            self.easeInView.transform = CGAffineTransform(translationX: 0, y: 600)
        })
        UIView.animate(withDuration: 1.5, delay: 0, options: .curveEaseOut, animations: {
            self.easeOutView.transform = CGAffineTransform(translationX: 0, y: 600)
        })
        UIView.animate(withDuration: 1.5, delay: 0, options: .curveEaseInOut, animations: {
            self.easeInOutView.transform = CGAffineTransform(translationX: 0, y: 600)
        })
    }
    @objc func startPressed(sender: UIButton){
        UIView.animate(withDuration: 1, animations: {
            self.linearView.transform = CGAffineTransform.identity
        })
        UIView.animate(withDuration: 1, animations: {
            self.easeInView.transform = CGAffineTransform.identity
        })
        UIView.animate(withDuration: 1, animations: {
            self.easeOutView.transform = CGAffineTransform.identity
        })
        UIView.animate(withDuration: 1, animations: {
            self.easeInOutView.transform = CGAffineTransform.identity
        })
    }
    @objc func resetPressed(sender: UIButton){

        
//        self.viewOneCenterYConstraint.constant = -200
//        self.viewTwoCenterYConstraint.constant = -200
//        self.viewThreeCenterYConstraint.constant = -200
//        self.viewFourCenterYConstraint.constant = -200
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.747428, green: 0.6014839411, blue: 0.2487616241, alpha: 1)
        self.view.addSubview(animateButton)
        self.view.addSubview(linearView)
        self.view.addSubview(easeInView)
        self.view.addSubview(easeOutView)
        self.view.addSubview(easeInOutView)
        self.view.addSubview(resetButton)
        self.view.addSubview(startButton)
    }
}

