//
//  DollyPlaylistViewController.swift
//  FinalProject2020
//
//  Created by Caroline Hwang on 7/15/20.
//  Copyright © 2020 Caroline Hwang. All rights reserved.
//

import UIKit

class DollyPlaylistViewController: UIViewController {

    
    @IBOutlet weak var dollyLink: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()

        // Do any additional setup after loading the view.
    }
    
    func updateTextView(){
        let path = "https://music.apple.com/us/playlist/cooking-with-the-stars-dolly-parton/pl.u-DdANN8NtLzb0rG"
        let text = dollyLink.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Click to open Dolly Parton playlist in Apple Music")
        let font = dollyLink.font
        let textColor = dollyLink.textColor
        dollyLink.attributedText = attributedString
        dollyLink.font = font
        dollyLink.textColor = textColor
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
