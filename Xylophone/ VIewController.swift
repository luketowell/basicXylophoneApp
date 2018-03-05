//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //define the AVAudioPlayer
    var noteSound: AVAudioPlayer?

    @IBAction func notePressed(_ sender: UIButton) {
            //Call the play sound function passing in the filename
            playSound(Filename: "note\(sender.tag)")
    }
    
    func playSound(Filename : String){
        //Create URL with hardcoded extension because it doesn't change in the app
        let soundUrl = Bundle.main.url(forResource: Filename, withExtension: "wav")!
        
        do {
            noteSound = try AVAudioPlayer(contentsOf: soundUrl)
            noteSound?.play()
        }
        catch{
            print ("issue loading file")
        }
    }

}

