//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Esperanza on 1/6/22.
//  Copyright © 2022 Derrick Park. All rights reserved.
//

import Foundation
import UIKit


class DetailsViewController: UIViewController {
    
    let mainView: UIView = {
      let main = UIView()
      main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .lightText
      return main
    }()
    
    var selectedCity: String = ""
    var selectedPre: Double = 0.0
    var selectedTemp: Double = 0.0
    var selectedSum: String = ""
    var selectedFlag: String = ""
    

    var widthAnchor: NSLayoutConstraint?
    var heightAnchor: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mainView)
        view.backgroundColor = .white
        setupLayout()
        
        
        let label1 = UILabel()
        label1.text = "Country"
        label1.textColor = .black
        label1.font = UIFont(name: "Helvetica Neue", size: 20)
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        let labelFlag = UILabel()
        labelFlag.text = selectedFlag
        labelFlag.textColor = .brown
        labelFlag.font = UIFont(name: "Helvetica Neue", size: 35)
        labelFlag.translatesAutoresizingMaskIntoConstraints = false
        
        let label2 = UILabel()
        label2.text = "City"
        label2.textColor = .black
        label2.font = UIFont(name: "Helvetica Neue", size: 20)
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        let labelCity = UILabel()
        labelCity.text = selectedCity
//        print(selectedCity)
        labelCity.textColor = .brown
        labelCity.font = UIFont(name: "Helvetica Neue", size: 20)
        labelCity.translatesAutoresizingMaskIntoConstraints = false
        
        
        let label3 = UILabel()
        label3.text = "Precipitation"
        label3.textColor = .black
        label3.font = UIFont(name: "Helvetica Neue", size: 20)
        label3.translatesAutoresizingMaskIntoConstraints = false
        
        
        let labelPre = UILabel()
        labelPre.text = String(selectedPre)
        labelPre.textColor = .brown
        labelPre.font = UIFont(name: "Helvetica Neue", size: 20)
        labelPre.translatesAutoresizingMaskIntoConstraints = false
    
        
        let label4 = UILabel()
        label4.text = "Temperature"
        label4.textColor = .black
        label4.font = UIFont(name: "Helvetica Neue", size: 20)
        label4.translatesAutoresizingMaskIntoConstraints = false
        
        let labelTemp = UILabel()
        labelTemp.text = String(selectedTemp)
        labelTemp.textColor = .brown
        labelTemp.font = UIFont(name: "Helvetica Neue", size: 20)
        labelTemp.translatesAutoresizingMaskIntoConstraints = false
        
        let label5 = UILabel()
        label5.text = "Summary"
        label5.textColor = .black
        label5.font = UIFont(name: "Helvetica Neue", size: 20)
        label5.translatesAutoresizingMaskIntoConstraints = false
        
        let labelDay = UILabel()
        labelDay.text = selectedSum
        labelDay.textColor = .brown
        labelDay.font = UIFont(name: "Helvetica Neue", size: 20)
        labelDay.translatesAutoresizingMaskIntoConstraints = false
        
        
        var labelArray = [UIView]()
        labelArray = [label1, labelFlag, label2, labelCity, label3, labelPre, label4, labelTemp, label5, labelDay]
        
        let labelContainer = UIStackView(arrangedSubviews: labelArray)
        labelContainer.axis = .vertical
        labelContainer.alignment = .center
        labelContainer.distribution = .equalSpacing
        labelContainer.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(labelContainer)
        
        //set up layout
        labelContainer.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.7).isActive = true
        //horizontally in container
        labelContainer.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        //vertically in container
        labelContainer.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
    
            
        }
        
 
    fileprivate func setupLayout() {
      mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
      mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
      widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
      widthAnchor?.isActive = true
      heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
      heightAnchor?.isActive = true
    
    }
    

}
