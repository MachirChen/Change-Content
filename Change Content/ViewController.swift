//
//  ViewController.swift
//  Change Content
//
//  Created by Machir on 2021/7/21.
//

import UIKit

let images = ["阿拉丁.jpg", "黑寡婦.jpg", "靈魂急轉彎.jpg"]
let nameLabels = ["阿拉丁", "黑寡婦", "靈魂急轉彎"]
let pageLabels = ["1/3", "2/3", "3/3"]

var arrayIndex = 0

class ViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var pageDotPageControl: UIPageControl!
    @IBOutlet weak var nameSegementedControl: UISegmentedControl!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pageLabel: UILabel!
    
    func sync() {
        movieImageView.image = UIImage(named: images[arrayIndex])
        pageDotPageControl.currentPage = arrayIndex
        nameSegementedControl.selectedSegmentIndex = arrayIndex
        nameLabel.text = nameLabels[arrayIndex]
        pageLabel.text = pageLabels[arrayIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sync()
    }

    @IBAction func changePageDot(_ sender: Any) {
        if pageDotPageControl.currentPage == 0 {
            arrayIndex = 0
            sync()
        } else if pageDotPageControl.currentPage == 1 {
            arrayIndex = 1
            sync()
        } else {
            arrayIndex = 2
            sync()
        }
    }
    
    @IBAction func changeNameSegement(_ sender: Any) {
        if nameSegementedControl.selectedSegmentIndex == 0 {
            arrayIndex = 0
            sync()
        } else if nameSegementedControl.selectedSegmentIndex == 1 {
            arrayIndex = 1
            sync()
        } else {
            arrayIndex = 2
            sync()
        }
    }
    
    @IBAction func showPreviousButton(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = arrayIndex + 2
            sync()
        } else if arrayIndex == 1 {
            arrayIndex = arrayIndex - 1
            sync()
        } else {
            arrayIndex = arrayIndex - 1
            sync()
        }
    }
    
    @IBAction func showNextButton(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = arrayIndex + 1
            sync()
        } else if arrayIndex == 1 {
            arrayIndex = arrayIndex + 1
            sync()
        } else {
            arrayIndex = arrayIndex - 2
            sync()
        }
    }
    
    @IBAction func showPreviousImage(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = arrayIndex + 2
            sync()
        } else if arrayIndex == 1 {
            arrayIndex = arrayIndex - 1
            sync()
        } else {
            arrayIndex = arrayIndex - 1
            sync()
        }
    }
    
    @IBAction func showNextImage(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = arrayIndex + 1
            sync()
        } else if arrayIndex == 1 {
            arrayIndex = arrayIndex + 1
            sync()
        } else {
            arrayIndex = arrayIndex - 2
            sync()
        }
    }
    
}

