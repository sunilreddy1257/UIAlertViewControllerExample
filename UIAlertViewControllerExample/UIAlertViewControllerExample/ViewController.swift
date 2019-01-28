//
//  ViewController.swift
//  UIAlertViewControllerExample
//
//  Created by Sunil on 29/01/19.
//  Copyright © 2019 SunilReddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func shareImageButtonPressed(_ sender: Any) {

        let sharedImage = [imageView.image!]
        let activityViewController = UIActivityViewController(activityItems: sharedImage, applicationActivities: nil)

        activityViewController.popoverPresentationController?.sourceView = self.view
        activityViewController.excludedActivityTypes = [UIActivity.ActivityType.airDrop]
        self.present(activityViewController, animated: true, completion: nil)
    }

    @IBAction func shareTextButtonPressed(_ sender: Any) {

        let sharedText = [lblText.text ?? "Activity Example"]
        let activityViewController = UIActivityViewController(activityItems: sharedText, applicationActivities: nil)

        activityViewController.popoverPresentationController?.sourceView = self.view
        activityViewController.excludedActivityTypes = [UIActivity.ActivityType.airDrop]
        self.present(activityViewController, animated: true, completion: nil)
    }
}

