//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets
    
    @IBOutlet weak var paintBucketColor: UIImageView!
    
    @IBOutlet weak var firstColorPressed: UISegmentedControl!
    
    @IBOutlet weak var secondColorPressed: UISegmentedControl!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to 
        
        paintBucketColor.backgroundColor =  UIColor.redColor()
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        let colorCombo = (first, second)
        //var finalColor = String()
        
        switch colorCombo {
            
        case ("red", "red"):
            paintBucketColor.backgroundColor = UIColor.redColor()
        case ("red", "yellow"):
            paintBucketColor.backgroundColor = UIColor.orangeColor()
        case ("red", "blue"):
            paintBucketColor.backgroundColor = UIColor.purpleColor()
        case ("yellow", "red"):
            paintBucketColor.backgroundColor = UIColor.orangeColor()
        case ("yellow", "yellow"):
            paintBucketColor.backgroundColor = UIColor.yellowColor()
        case ("yellow", "blue"):
            paintBucketColor.backgroundColor = UIColor.greenColor()
        case ("blue", "red"):
            paintBucketColor.backgroundColor = UIColor.purpleColor()
        case ("blue", "yellow"):
            paintBucketColor.backgroundColor = UIColor.greenColor()
        case ("blue", "blue"):
            paintBucketColor.backgroundColor = UIColor.blueColor()
        default: break
        }
        return ""
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
//        mixColors(withFirst: "red", second: "red")
        var firstColor = String()
        var secondColor = String()
        
        switch firstColorPressed.selectedSegmentIndex {
        case 0:
            firstColor = "red"
        case 1:
            firstColor = "yellow"
        case 2:
            firstColor = "blue"
        default: break
        }
        
        switch secondColorPressed.selectedSegmentIndex {
        case 0:
            secondColor = "red"
        case 1:
            secondColor = "yellow"
        case 2:
            secondColor = "blue"
        default: break
        }
        mixColors(withFirst: firstColor, second: secondColor)
        
        
        

 
        
        
        
        
        //        if firstColorPressed.paintColorName == "red"{
//                print("first pressed is red")
//        
//            if secondColorPressed.paintColorName == "yellow" {
//               mixColors(withFirst: "red", second: "yellow")
//                return "orange"
//        
//        paintBucketColor.paintColorName = mixColors(withFirst: "red", second: "red")
//        
//        paintBucketColor.paintColorName = mixColors(withFirst: "red", second: "blue")
//        paintBucketColor.paintColorName = mixColors(withFirst: "yellow", second: "red")
//        paintBucketColor.paintColorName = mixColors(withFirst: "yellow", second: "blue")
//        paintBucketColor.paintColorName = mixColors(withFirst: "yellow", second: "yellow")
//        paintBucketColor.paintColorName = mixColors(withFirst: "blue", second: "red")
//        paintBucketColor.paintColorName = mixColors(withFirst: "blue", second: "yellow")
//        paintBucketColor.paintColorName = mixColors(withFirst: "blue", second: "blue")
    }
}

//}
//}

//        mixColors(withFirst: "red", second: "blue")
//        print("colors pressed make purple")
//        return paintBucketColor.paintColorName = "purple"
//       

















