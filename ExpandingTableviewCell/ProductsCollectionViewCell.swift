//
//  ProductsCollectionViewCell.swift
//  ExpandingTableviewCell
//
//  Created by mahmoud yousef on 06/01/2023.
//

import UIKit

class ProductsCollectionViewCell:UICollectionViewCell {
        
        
    static let reuseID = String(describing: ProductsCollectionViewCell.self)
        
        @IBOutlet weak var productImageView: UIImageView!{
            didSet{
                productImageView.layer.cornerRadius = 50
            }
        }
        
        
        
        func configureCell(){
            productImageView.image = UIImage(named: "product")
        }
    }

extension ProductsCollectionViewCell:UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width / 2 , height: collectionView.frame.height)
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
}

