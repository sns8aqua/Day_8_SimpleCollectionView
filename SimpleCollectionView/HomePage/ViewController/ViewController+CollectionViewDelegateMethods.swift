//
//  ViewController+CollectionViewDelegateMethods.swift
//  SimpleCollectionView
//
//  Created by Santhosh on 19/01/22.
//

import UIKit

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
 
    func setCollectionView() {
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        self.setLayOut(size: CGSize(width: 414, height: 458), spacing: 10)
    }
    
    func setLayOut(size: CGSize, spacing: CGFloat) {
        let layOut = UICollectionViewFlowLayout()
        layOut.itemSize = size
        layOut.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layOut.scrollDirection = .horizontal
        layOut.minimumLineSpacing = spacing
        self.myCollectionView.collectionViewLayout = layOut
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.displayArray?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NumberCollectionViewCellIdentifier", for: indexPath)
        if let cellIs = cell as? NumberCollectionViewCell {
            cellIs.setData(data: self.displayArray?[indexPath.row])
        }
        return cell
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
    
}
