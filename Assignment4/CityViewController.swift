//
//  ViewController.swift
//  Assignment3
//
//  Created by Derrick Park on 2018-10-04.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {

	var city: City!

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        

		let cityLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 200, width: 300, height: 50))
		cityLabel.text = city.name
		cityLabel.textAlignment = .center
		cityLabel.font = UIFont(name: "Helvetica Neue", size: 50)
		
		let butt = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 25, width: 200, height: 50))
		butt.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
		butt.setTitle("See Details...", for: .normal)
		butt.layer.cornerRadius = 10.0
		butt.addTarget(self, action: #selector(showWeatherDetails), for: .touchUpInside)
		
		view.addSubview(cityLabel)
		view.addSubview(butt)
	}

  
    @objc func showWeatherDetails() {
        let detailCL = DetailsViewController()
        detailCL.selectedCity = city.name
        detailCL.selectedPre = city.precipitation
        detailCL.selectedTemp = city.temp
        detailCL.selectedSum = city.summary
        detailCL.selectedFlag = city.flag
        let item =  UIBarButtonItem (title: city.icon.upperCasedOfFirstLetter , style: .plain, target:  self , action:  nil )
        self.navigationItem.backBarButtonItem = item
        self.navigationController?.pushViewController(detailCL, animated: true)
    }
    }

    extension String {
        var upperCasedOfFirstLetter: String {
            return self.prefix(1).capitalized + dropFirst()
        
        }
}

