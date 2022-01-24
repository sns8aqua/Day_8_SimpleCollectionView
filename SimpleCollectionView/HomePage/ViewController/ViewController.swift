//
//  ViewController.swift
//  SimpleCollectionView
//
//  Created by Santhosh on 19/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!

    var displayArray: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayArray = [String]()
        for index in 1...10 {
            displayArray?.append("Number \(index)")
        }
        
        pageControl.numberOfPages = displayArray?.count ?? 0
        
        self.setCollectionView()
    }

}






