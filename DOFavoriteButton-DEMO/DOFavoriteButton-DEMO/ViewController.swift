//
//  ViewController.swift
//  DOFavoriteButton-DEMO
//
//  Created by Daiki Okumura on 2015/07/09.
//  Copyright (c) 2015 Daiki Okumura. All rights reserved.
//

import UIKit
import DOFavoriteButton

class ViewController: UIViewController {

    @IBOutlet var heartButton: DOFavoriteButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let width = (self.view.frame.width - 44) / 4
        var x = width / 2
        let y = self.view.frame.height / 2 - 22
        
       
        let likeButton = DOFavoriteButton(frame: CGRect(x: x, y: y, width: 44, height: 44), image: UIImage(named: "like"))
        likeButton.imageColorOn = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        likeButton.circleColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        likeButton.lineColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        likeButton.addTarget(self, action: #selector(self.tappedButton), for: .touchUpInside)
        self.view.addSubview(likeButton)
        x += width
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func tappedButton(sender: DOFavoriteButton) {
        if sender.isSelected {
            sender.deselect()
        } else {
            sender.select()
        }
    }
}

