//
//  home.swift
//  login
//
//  Created by Michael Ng Cen on 4/24/18.
//  Copyright © 2018 Michael Ng Cen. All rights reserved.
//

import UIKit
import AVFoundation

class home: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        do
        {
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            
        }
        
        player.play()
        
        // Do any additionaletup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
