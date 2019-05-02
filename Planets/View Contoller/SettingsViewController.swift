//
//  SettingsViewController.swift
//  Planets
//
//  Created by Michael Redig on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController {
	
	let defaults = UserDefaults.standard
	
	@IBOutlet var includePlutoSwitch: UISwitch!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		updateViews()
	}
	
	func updateViews() {
		includePlutoSwitch.isOn = defaults.value(forKey: PlanetController.plutoKey) as? Bool ?? false
	}

	@IBAction func includePlutoSwitchToggled(_ sender: UISwitch) {
		defaults.set(sender.isOn, forKey: PlanetController.plutoKey)
	}
	
	@IBAction func doneButtonPressed(_ sender: UIButton) {
		dismiss(animated: true)
	}
}
