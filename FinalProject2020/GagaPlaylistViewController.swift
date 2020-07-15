//
//  GagaPlaylistViewController.swift
//  FinalProject2020
//
//  Created by Caroline Hwang on 7/15/20.
//  Copyright © 2020 Caroline Hwang. All rights reserved.
//

import UIKit

class GagaPlaylistViewController: UIViewController {

    
    @IBOutlet weak var gagaLink: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()

        // Do any additional setup after loading the view.
    }
    
    func updateTextView(){
    let path = "https://music.apple.com/us/playlist/cooking-with-the-stars-lady-gaga/pl.u-9N9LLpdI4Lb1Np"
    let text = gagaLink.text ?? ""
    let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Click to open Lady Gaga playlist in Apple Music")
    let font = gagaLink.font
    let textColor = gagaLink.textColor
    gagaLink.attributedText = attributedString
    gagaLink.font = font
    gagaLink.textColor = textColor

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
