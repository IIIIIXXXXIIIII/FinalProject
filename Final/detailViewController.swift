//
//  detailViewController.swift
//  Final
//
//  Created by user910120 on 5/1/18.
//  Copyright © 2018 user910120. All rights reserved.
//

import UIKit

class detailViewController: UIViewController, UITextViewDelegate {

    var imagePass: String?
    var titlePass: String?
    var descriptionPass: String?
    

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        
        textView.isEditable = false
        
        self.view.backgroundColor = .blue
        
        self.title = titlePass

        if let imageName = imagePass { imageView.image = UIImage(named: imageName)
        }
        
        if let outputText = descriptionPass { textView.text = outputText
        }
        
     func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
}
}

