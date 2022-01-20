//
//  ViewController.swift
//  FrenchDispatch
//
//  Created by Ashley H on 2022/1/10.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var storiesImageView: UIImageView!
    let stories = ["inBrief", "#1", "#2", "#3"]
    var index = 0
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func next(_ sender: Any) {
        index = (index + 1) % stories.count
        let storyName = stories[index]
        storiesImageView.image = UIImage(named: storyName)
        pageControl.currentPage = index
        segmentedControl.selectedSegmentIndex = index
    }
    
    @IBAction func previous(_ sender: Any) {
        index = (index + stories.count - 1) % stories.count
        let storyName = stories[index]
        storiesImageView.image = UIImage(named: storyName)
        pageControl.currentPage = index
        segmentedControl.selectedSegmentIndex = index
    }
    

    @IBAction func pageControlTapped(_ sender: UIPageControl) {
        index = sender.currentPage
        let storyName = stories[index]
        storiesImageView.image = UIImage(named: storyName)
        segmentedControl.selectedSegmentIndex = index
    }
    
    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        index = sender.selectedSegmentIndex
        let storyName = stories[index]
        storiesImageView.image = UIImage(named: storyName)
        pageControl.currentPage = index
    }
    
}

