//
//  PlanetDetailViewController.swift
//  Solor_System
//
//  Created by Tasuku Yamamoto on 4/7/22.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetDiameterLabel: UILabel!
    @IBOutlet weak var maxDistFromSunLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    
    //MARK: - Properties
    var planet: Planet?
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    //MARK: - Helper Methods
    func updateView(){
        guard let planet = planet else { return }
        planetNameLabel.text = planet.planetName
        planetImageView.image = UIImage(named: planet.planetImageName)
        planetDiameterLabel.text = "\(planet.planetDiameter) KM"
        maxDistFromSunLabel.text = "\(planet.maxMillionKMsFromSun) 10^6KM"
        dayLengthLabel.text = "\(planet.planetDayLength) Days"
    }
    
}//End of class
