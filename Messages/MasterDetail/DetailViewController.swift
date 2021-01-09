//
// Created by Dylan Wang on 2020/7/29.
// Copyright © 2020 Xingbin Wang. all rights reserved.
// 

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailDescription {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailDescription: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }

}

