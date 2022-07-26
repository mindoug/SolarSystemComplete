//
//  DetailViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 7/26/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var planet: Planet!
    var name = ""
    var image = UIImage()
    var planetDescription = ""
    var planetFact = ""
    
    @IBOutlet weak var planetFactTextView: UITextView!
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetDescriptionTextView: UITextView!
    @IBOutlet weak var planetNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    func setUpViews() {
        planetImage.image = planet.planetImage
        planetNameLabel.text = planet.name
        planetDescriptionTextView.text = planet.description
        planetFactTextView.text = planet.fact
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
