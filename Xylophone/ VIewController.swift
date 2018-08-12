//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {

        playSound(for: "note\(sender.tag)")
        
    }
    
    func playSound(for resource: String) -> Void {

        guard let url = Bundle.main.url(forResource: resource, withExtension: "wav") else { return }
        
        do {
            try player = AVAudioPlayer(contentsOf: url)
        } catch let error {
            player = nil
            print(error.localizedDescription)
        }
        
        player?.play()

    }

}

