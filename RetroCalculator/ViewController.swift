//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Luana Nalon on 29/04/2021.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var btnSound: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
        } catch let err as NSError{
            print(err.debugDescription)
        }
    }
    @IBAction func numberPressed(sender: UIButton){
        playSound()
    }
    func playSound() {
        if btnSound.isPlaying {
            btnSound.stop()
        }
        btnSound.play()
    }

}

