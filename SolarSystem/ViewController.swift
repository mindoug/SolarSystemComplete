//
//  ViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 6/30/22.
//

import UIKit

class ViewController: UIViewController {

    
   var quote = Quote()
    
    
    @IBOutlet weak var quoteTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteTextView.text = quote.randomQuote

    }

   
    
}

