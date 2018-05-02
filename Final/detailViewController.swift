//
//  detailViewController.swift
//  Final
//
//  Created by user910120 on 5/1/18.
//  Copyright © 2018 user910120. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    var imagepass: String?
    var titlepass: String?
    var descriptionpass: String?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageName = imagepass {
            imageView.image = UIImage(named: imageName)
            
            if let Textview = textpass {
                textView.text = UIText(named:textView)
                
            }
            
    }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
