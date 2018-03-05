//
//  ViewController.swift
//  Hackwich6
//
//  Created by CM Student on 3/5/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    
    @IBOutlet var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderHasMoved(_ sender:Any) {
        
        print("The value of the slider is:\(slider.value)")
        
        currentValue = lroundf(slider.value)
        
        
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
    
        let message = "The value is: \(currentValue)"
        
        //1. create the alert view
        let alert = UIAlertController(title:"Hello World", message:message, preferredStyle: .alert)
        
        //2. button that user taps to dismiss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //3. add the button to the alerview
        alert.addAction(action)
    
        //4. pressent alerview on the screen
        present(alert, animated: true, completion: nil)
    }
    
    
        
        
    }


