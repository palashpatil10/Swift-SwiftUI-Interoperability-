//
//  ViewController.swift
//  InteroperabilityDemo
//
//  Created by CapG on 09/03/26.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var countryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showCountryButton(_ sender: Any) {
        let countryView = CountryView(countries: countries){
            selectedCountry in
            print("Selected Country is:",selectedCountry.name, "",selectedCountry.flag)
            self.countryLabel.text = selectedCountry.name
            self.dismiss(animated: true)
        }
        let hostController = UIHostingController(rootView:countryView)
        present(hostController,animated: true)
    }
    
}

