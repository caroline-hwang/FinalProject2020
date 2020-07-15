//
//  TaylorPlaylistViewController.swift
//  FinalProject2020
//
//  Created by Caroline Hwang on 7/15/20.
//  Copyright © 2020 Caroline Hwang. All rights reserved.
//

import UIKit

class TaylorPlaylistViewController: UIViewController {
    
    
    @IBOutlet weak var taylorLink: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()

        // Do any additional setup after loading the view.
    }
    
    func updateTextView(){
        let path = "https://music.apple.com/us/playlist/cooking-with-the-stars-taylor-swift/pl.u-DdANNB3ILzb0rG"
        let text = taylorLink.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Click to open Taylor Swift playlist in Apple Music")
        let font = taylorLink.font
        let textColor = taylorLink.textColor
        taylorLink.attributedText = attributedString
        taylorLink.font = font
        taylorLink.textColor = textColor
        
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
