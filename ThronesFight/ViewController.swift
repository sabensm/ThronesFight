//
//  ViewController.swift
//  ThronesFight
//
//  Created by Mike Sabens on 7/20/16.
//  Copyright © 2016 TheNewThirty. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {

    var backgroundSound: AVAudioPlayer!
    
    //Preparing Audio
    
    
    
    
    @IBOutlet weak var printLabel: UILabel!
    
    @IBOutlet weak var leftPlayerHpLabel: UILabel!
    
    @IBOutlet weak var rightPlayerHpLabel: UILabel!
    
    @IBOutlet weak var leftPlayerImage: UIImageView!
    
    @IBOutlet weak var rightPlayerImage: UIImageView!
    
    @IBAction func leftAttackButtonPressed(sender: AnyObject) {
    
    
    }
    
    @IBAction func rightAttackButtonPressed(sender: AnyObject) {
    
    
    
    }
    
    var leftPlayer: Player!
    var rightPlayer: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateRandomLeftPlayer()
        generateRandomRightPlayer()
        
        
        //Playing Background Audio
        
        let backgroundAudio = NSBundle.mainBundle().pathForResource("Castlecall", ofType: "mp3")
        let soundURL = NSURL(fileURLWithPath: backgroundAudio!)
        do {
            try backgroundSound = AVAudioPlayer(contentsOfURL: soundURL)
            backgroundSound.prepareToPlay()
        } catch let soundPlayError as NSError {
            print(soundPlayError.debugDescription)
        }
        
        if let sound = backgroundSound {
            sound.prepareToPlay()
            sound.play()
            sound.numberOfLoops = -1
        }
    }
    
    //Random Left Player Generation
    
    func generateRandomLeftPlayer() {
        
        let randLeftPlayer = Int(arc4random_uniform(3))
        
        if randLeftPlayer == 0 {
            leftPlayer = Tyrion(startingHp: 80, attackPower: 20, name: "Tyrion")
        } else if randLeftPlayer == 1 {
            leftPlayer = Drogo(startingHp: 110, attackPower: 15, name: "Khal Drogo")
        } else if randLeftPlayer == 2 {
            leftPlayer = Walker(startingHp: 90, attackPower: 20, name: "White Walker")
        }
        print(randLeftPlayer)
        
    }
    
    //Random Right Player Generation
    
    func generateRandomRightPlayer() {
        
        let randRightPlayer = Int(arc4random_uniform(3))
        
        if randRightPlayer == 0 {
            rightPlayer = Tyrion(startingHp: 80, attackPower: 20, name: "Tyrion")
        } else if randRightPlayer == 1 {
            rightPlayer = Drogo(startingHp: 110, attackPower: 15, name: "Khal Drogo")
        } else if randRightPlayer == 2 {
            rightPlayer = Walker(startingHp: 90, attackPower: 20, name: "White Walker")
        }
        
    }
}