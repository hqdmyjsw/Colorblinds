//
//  ViewController.swift
//  ColorBlinds
//
//  Created by Jordi de Kock on 15-04-16.
//  Copyright © 2016 Jordi de Kock. All rights reserved.
//

import UIKit
import CoreGraphics
import QuartzCore

typealias CGGammaValue = Float
typealias CGDirectDisplayID = UInt32

class ViewController: UIViewController {
    
    var testImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.barTintColor = .redColor()
        self.navigationController?.navigationBar.tintColor = .whiteColor()
        
        let titleDict = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        self.navigationController?.navigationBar.titleTextAttributes = titleDict
        
        self.title = "Colorblinds"
        
        testImage = UIImageView.init(frame: CGRectMake(20, 20, self.view.bounds.size.width - 40, 240));
        testImage.image = UIImage(named: "Balloons")
        testImage.clipsToBounds = true
        testImage.contentMode = .ScaleAspectFill
        self.view.addSubview(testImage);
        
        let nextViewButton = UIButton.init(type: .Custom)
        nextViewButton.frame = CGRectMake(20, testImage.frame.size.height + testImage.frame.origin.y + 20, self.view.bounds.size.width - 40, 50)
        nextViewButton.backgroundColor = .redColor()
        nextViewButton.setTitle("Next view", forState: .Normal)
        nextViewButton.addTarget(self, action: #selector(ViewController.nextView), forControlEvents: .TouchUpInside)
        self.view.addSubview(nextViewButton)
    }
    
    func nextView() {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        print("next view")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
