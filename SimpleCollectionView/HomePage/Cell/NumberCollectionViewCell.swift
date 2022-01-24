//
//  NumberCollectionViewCell.swift
//  SimpleCollectionView
//
//  Created by Santhosh on 19/01/22.
//

import UIKit

class NumberCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    func setData(data: String?) {
        guard let data = data else { return  }
        self.displayLabel.text = data
    }
    
    
    
}
