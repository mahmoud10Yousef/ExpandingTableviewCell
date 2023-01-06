//
//  ExpandableTableViewCell.swift
//  ExpandingTableviewCell
//
//  Created by mahmoud yousef on 06/01/2023.
//

import UIKit

class ExpandableTableViewCell: UITableViewCell, UICollectionViewDelegate {
   
    static let reuseID = String(describing: ExpandableTableViewCell.self)
    
    @IBOutlet weak var subCatergoryLabel: UILabel!
    
    @IBOutlet weak var expandedImageView: UIImageView!
    
    @IBOutlet weak var expandableView: UIView!{
        didSet{
            expandableView.isHidden = true
        }
    }
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productsCollectionView.dataSource = self
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(isExpanded: Bool , index:Int){
        let expandedIcon = isExpanded ? "collapseImage" : "expandImage"
        expandedImageView.image = UIImage(named: expandedIcon)
        expandableView.isHidden = !isExpanded
        subCatergoryLabel.text = "Sub Cateogry number \(index)"
    }

}


extension ExpandableTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductsCollectionViewCell.reuseID, for: indexPath) as! ProductsCollectionViewCell
        cell.configureCell()
        return cell
    }
    
    
}
