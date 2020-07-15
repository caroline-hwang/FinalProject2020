//
//  LeaPlaylistViewController.swift
//  FinalProject2020
//
//  Created by Caroline Hwang on 7/15/20.
//  Copyright © 2020 Caroline Hwang. All rights reserved.
//

import UIKit

class LeaPlaylistViewController: UIViewController {

    
    @IBOutlet weak var leaLink: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()
        

        // Do any additional setup after loading the view.
    }
    
    func updateTextView(){
        let path = "https://music.apple.com/us/playlist/cooking-with-the-stars-lea-michelle/pl.u-e98lljmC1BYaGR"
        let text = leaLink.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Click to open Lea Michele playlist in Apple Music")
        let font = leaLink.font
        let textColor = leaLink.textColor
        leaLink.attributedText = attributedString
        leaLink.font = font
        leaLink.textColor = textColor
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
