//
//  PlaySound.swift
//  Honeymoon
//
//  Created by Zerone on 02/03/20.
//  Copyright © 2020 thobio. All rights reserved.
//

import AVFoundation

var audioPlayer:AVAudioPlayer?

func playSound(sound:String,type:String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("ERROR: Could not find and play the sound file!")
        }
    }
}
