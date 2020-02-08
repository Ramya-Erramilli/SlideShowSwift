//
//  ViewController.swift
//  SlideShow
//
//  Created by Ramya Seshagiri on 08/02/20.
//  Copyright © 2020 Ramya Seshagiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        var names = ["Tom","Jerry","JhonnyBravo","PowerPuffGirls","Dexter","Tweety","Oswald","BugsBunny","Popeye","Pingu","RoadRunner","ScoobyDoobyDoo","TeleTubbies"]
    @IBOutlet weak var imageViewOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var timer = Timer.scheduledTimer(withTimeInterval: 0.9, repeats: true) { (timer) in
            var pic = self.names.randomElement()
            self.imageViewOutlet.image = UIImage(named: pic!)
        }
        timer.fire()
        
    }


}

