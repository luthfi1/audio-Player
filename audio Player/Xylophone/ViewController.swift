//
//  ViewController.swift
//  Xylophone
//
//  Created by Luthfi farizqi on 28/06/2019.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer? //data nya bisa diisi atau tidak sama sekali

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSound(_ sender: UIButton) {
        playSound(sound: sender.currentTitle!)
    }
    func playSound(sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
}

