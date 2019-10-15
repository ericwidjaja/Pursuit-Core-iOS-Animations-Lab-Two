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
        view.tag = 0
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var easeInView: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 135, y: 120, width: 55, height: 55))
        view.image = #imageLiteral(resourceName: "beach-ball.png")
        var frame = view.frame
        view.frame = frame
        view.tag = 1
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var easeOutView: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 225, y: 120, width: 55, height: 55))
        view.image = #imageLiteral(resourceName: "beach-ball.png")
        var frame = view.frame
        view.frame = frame
        view.tag = 2
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var easeInOutView: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 315, y: 120, width: 55, height: 55))
        view.image = #imageLiteral(resourceName: "beach-ball.png")
        var frame = view.frame
        view.frame = frame
        view.tag = 3
        view.backgroundColor = .clear
        return view
    }()
    
    //MARK: - Buttons
    lazy var animateButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 260, y: 800, width: 100, height: 34))
        button.backgroundColor = .red
        button.setTitle("ANIMATE", for: .normal)
        button.addTarget(self, action: #selector(animatePressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var resetButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 50, y: 800, width: 100, height: 34))
        button.backgroundColor = .red
        button.setTitle("R E S E T", for: .normal)
        button.addTarget(self, action: #selector(resetPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var linear: UIButton = {
        let button = UIButton(frame: CGRect(x: 30, y: 80, width: 75, height: 32))
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 0
        button.addTarget(self, action: #selector(disappearButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easeIn: UIButton = {
        let button = UIButton(frame: CGRect(x: 125, y: 80, width: 75, height: 32))
        button.setTitle("Ease In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 1
        button.addTarget(self, action: #selector(disappearButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easeOut: UIButton = {
        let button = UIButton(frame: CGRect(x: 215, y: 80, width: 75, height: 32))
        button.setTitle("Ease Out", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 2
        button.addTarget(self, action: #selector(disappearButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easeInOut: UIButton = {
        let button = UIButton(frame: CGRect(x: 310, y: 80, width: 75, height: 32))
        button.setTitle("In/Out", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = 3
        button.addTarget(self, action: #selector(disappearButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Methods
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
    
    
    @objc func resetPressed(sender: UIButton){
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
    
    
    @objc func disappearButton(sender: UIButton) {
      let arr = [linearView, easeInView, easeOutView ,easeInOutView]
          for i in arr{
              if i.tag == sender.tag && !i.isHidden{
                  i.isHidden = true
              }else if i.tag == sender.tag && i.isHidden  {
                  i.isHidden = false
              }
          }
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
        self.view.addSubview(linear)
        self.view.addSubview(easeIn)
        self.view.addSubview(easeOut)
        self.view.addSubview(easeInOut)
    }
}

