//
//  ViewController.swift
//  musicApp
//
//  Created by Julia on 2017/03/12.
//  Copyright © 2017 Julia. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var PlayBtn: UIButton!
    @IBOutlet weak var StopBtn: UIButton!
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Get file path
        let filePath = Bundle.main.path(forResource: "Beethoven-FurElise", ofType: "mp3")
        let audioPath = URL(fileURLWithPath: filePath!)
        
        do {
            // Initialize audio player
            audioPlayer = try AVAudioPlayer(contentsOf: audioPath)
            audioPlayer.prepareToPlay()
        } catch {
            print("Error")
        }
        
        PlayBtn.layer.cornerRadius = 30
        StopBtn.layer.cornerRadius = 30
    }

    @IBAction func TappedPlay(_ sender: Any) {
        // Play
        audioPlayer.play()
    }
    @IBAction func TappedStop(_ sender: Any) {
        // Stop
        audioPlayer.stop()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

